package hk.polyu.repackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

import org.apache.commons.io.FileUtils;

import hk.polyu.Configuration;

public class ParseXML {
	
	public ZipFile overrideLayoutXML(String srcApkPath, String commonLayoutFilePath) throws IOException {
		File srcApk = new File(srcApkPath);
		// get a temp file
		String tempApkPath = srcApkPath.replace(".apk", "_tmp.apk");
		File tempApk = new File(tempApkPath);
		FileUtils.copyFile(srcApk, tempApk);
		
		srcApk.delete();
		srcApk.createNewFile();
		
		byte[] buf = new byte[4096 * 1024];
		ZipInputStream zin = new ZipInputStream(new FileInputStream(tempApk));
		ZipOutputStream out = new ZipOutputStream(new FileOutputStream(srcApk));

		ArrayList<String> layoutNameList = new ArrayList<String>();
		ZipEntry entry = zin.getNextEntry();
		while (entry != null) {
			String entryName = entry.getName();
			
			boolean overrideFlag = false;
			if (entryName.startsWith("res/layout") && entryName.endsWith(".xml")) {
				overrideFlag = true;
				layoutNameList.add(entryName);
			}
			
			if (!overrideFlag) {
				// Add ZIP entry to output stream.
				out.putNextEntry(new ZipEntry(entryName));
				// Transfer bytes from the ZIP file to the output file
				int len;
				while ((len = zin.read(buf)) > 0) {
					out.write(buf, 0, len);
				}
			}
			entry = zin.getNextEntry();
		}
		// Close the streams
		zin.close();
		// Compress the files
		for (String layoutFileName : layoutNameList) {
			InputStream in = new FileInputStream(commonLayoutFilePath);
			// Add ZIP entry to output stream.
			out.putNextEntry(new ZipEntry(layoutFileName));
			// Transfer bytes from the file to the ZIP file
			int len;
			while ((len = in.read(buf)) > 0) {
				out.write(buf, 0, len);
			}
			// Complete the entry
			out.closeEntry();
			in.close();
		}
		
		// Complete the ZIP file
		out.close();
		tempApk.delete();

		return new ZipFile(srcApk);
	}
	
	public void exec() {
		try {
			overrideLayoutXML(Configuration.apkPath, Configuration.commonLayoutFilePath);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}

	public static void main(String[] args) {
		ParseXML parser = new ParseXML();
		parser.exec();
	}

}
