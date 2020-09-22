package hk.polyu.repackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

import org.apache.commons.io.FileUtils;

import hk.polyu.Configuration;

public class ParseARSC {
	
	public ZipFile moveARSC(String srcApkPath) throws IOException {
		File srcApk = new File(Configuration.apkPath);
		// get a temp file
		String tempApkPath = srcApkPath.replace(".apk", "_tmp.apk");
		File tempApk = new File(tempApkPath);
		FileUtils.copyFile(srcApk, tempApk);
		
		srcApk.delete();
		srcApk.createNewFile();
		
		byte[] buf = new byte[4096 * 1024];
		ZipInputStream zin = new ZipInputStream(new FileInputStream(tempApk));
		ZipOutputStream out = new ZipOutputStream(new FileOutputStream(srcApk));
		
		ZipEntry entry = zin.getNextEntry();
		while (entry != null) {
			String entryName = entry.getName();
			// Add ZIP entry to output stream.
			out.putNextEntry(new ZipEntry(entryName));
			// Transfer bytes from the ZIP file to the output file
			int len;
			while ((len = zin.read(buf)) > 0) {
				out.write(buf, 0, len);
			}
			entry = zin.getNextEntry();
		}
		// Close the streams
		zin.close();
		
		// add "asset/origin_resources.zip"
		{
			String resourcesZipFilePath = GenResourceFile.temp_resFile;
			File resourcesZipFile = new File(resourcesZipFilePath);
			// 
			String assetARSCEntryName = "assets/origin_resources.zip";
			InputStream is = new FileInputStream(resourcesZipFile);
			// Add ZIP entry to output stream.
			out.putNextEntry(new ZipEntry(assetARSCEntryName));
			// Transfer bytes from the file to the ZIP file
			int len;
			while ((len = is.read(buf)) > 0) {
				out.write(buf, 0, len);
			}
			// Complete the entry
			out.closeEntry();
			is.close();
		}
		
		// Complete the ZIP file
		out.close();
		tempApk.delete();

		return new ZipFile(srcApk);
	}
	
	public void exec() {
		try {
			GenResourceFile.generate();
			moveARSC(Configuration.apkPath);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}

}
