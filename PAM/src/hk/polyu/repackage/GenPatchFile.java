package hk.polyu.repackage;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import org.apache.commons.io.FileUtils;

import hk.polyu.util.BashRunner;

public class GenPatchFile {
	
	public static String patchFilePath = "";
	
	public void exec() {
		generate();
		gainPatchFilePath();
		renamePatchFile();
	}
	
	private void generate() {
		ArrayList<String> commands = new ArrayList<String>();
		String[] commonCmd = { "/bin/sh", "-c" };
		commands.addAll(Arrays.asList(commonCmd));
		commands.add(String.format("%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s",
				"java", "-jar", "util/apkpatch-1.0.3.jar",
				"-f", "tgt_apk/" + SootEnvironment.apkFileName, "-t", "src_apk/" + SootEnvironment.apkFileName, "-o", "patch/",
				"-k", "/home/zhouhao/njupt.jks", "-p", "njuptnjupt", "-a", "njupt", "-e", "njuptnjupt"));
		BashRunner bash = new BashRunner(commands, false);
		bash.run();
	}
	
	private void gainPatchFilePath() {
		File patchDir = new File("patch");
		if (patchDir.exists() && patchDir.isDirectory()) {
			File[] files = patchDir.listFiles();
			for (File file : files) {
				// if (file.getName().startsWith(SootEnvironment.apkFileName.replace(".apk", "")) && file.getName().endsWith(".apatch")) {
				if (file.getName().endsWith(".apatch")) {
					patchFilePath = file.getAbsolutePath();
				}
			}
		} else {
			throw new RuntimeException("directory \"patch\" can not be found");
		}
		
		assert !patchFilePath.equals("");
	}
	
	private void renamePatchFile() {
		File newPatchFile = new File("patch/patch.apatch");
		File oldPatchFile = new File(patchFilePath);
		
		if (!oldPatchFile.exists()) {
			throw new RuntimeException("old patch file: " + oldPatchFile.getAbsolutePath() + " does not exist");
		}
		if (newPatchFile.exists()) {
			newPatchFile.delete();
		}
		
		try {
			FileUtils.copyFile(oldPatchFile, newPatchFile);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		oldPatchFile.delete();
		patchFilePath = newPatchFile.getAbsolutePath();
	}

}
