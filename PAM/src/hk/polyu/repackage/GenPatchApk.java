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

public class GenPatchApk {
	
	public void exec() throws IOException {
		addPatchFile(GenSrcApk.srcApkPath);
		addSoFile(GenSrcApk.srcApkPath);
		
		if (new File(Configuration.apkPath).exists()) {
			new File(Configuration.apkPath).delete();
		}
		FileUtils.copyFile(new File(GenSrcApk.srcApkPath), new File(Configuration.apkPath));
	}
	
	private ZipFile addPatchFile(String srcApkPath) throws IOException {
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
		zin.close();
		
		InputStream in = new FileInputStream(GenPatchFile.patchFilePath);
		// Add ZIP entry to output stream.
		out.putNextEntry(new ZipEntry("assets/patch.apatch"));
		// Transfer bytes from the file to the ZIP file
		int len;
		while ((len = in.read(buf)) > 0) {
			out.write(buf, 0, len);
		}
		// Complete the entry
		out.closeEntry();
		in.close();
		
		// Complete the ZIP file
		out.close();
		tempApk.delete();

		return new ZipFile(srcApk);
	}
	
	private ZipFile addSoFile(String srcApkPath) throws IOException {
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
		zin.close();
		
		// gain all so files
		ArrayList<File> soFileList = new ArrayList<File>();
		File jnilibFile = new File("jnilib/");
		if (!jnilibFile.exists() || !jnilibFile.isDirectory()) {
			throw new RuntimeException("directory \"jnilib\" does not exist");
		}
		for (File subDirFile : jnilibFile.listFiles()) {
			if (!subDirFile.isDirectory()) {
				throw new RuntimeException("directory: " + subDirFile.getAbsolutePath() + " should be a directory");
			}
			for (File soFile : subDirFile.listFiles()) {
				soFileList.add(soFile);
			}
		}
		
		// insert so files into the apk
		for (File soFile : soFileList) {
			InputStream in = new FileInputStream(soFile);
			// Add ZIP entry to output stream.
			out.putNextEntry(new ZipEntry(soFile.getPath().replace("jnilib/", "lib/")));
			// Transfer bytes from the file to the ZIP file
			int len;
			while ((len = in.read(buf)) > 0) {
				out.write(buf, 0, len);
			}
			in.close();
		}
		
		// Complete the entry
		out.closeEntry();
		// Complete the ZIP file
		out.close();
		tempApk.delete();

		return new ZipFile(srcApk);
	}

}
