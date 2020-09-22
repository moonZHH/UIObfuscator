package hk.polyu.repackage;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;

import hk.polyu.util.BashRunner;

public class Repackage {
	public static String outputApkPath = "";
	
	private static void recompileApk() {
		ArrayList<String> commands = new ArrayList<String>();
		String[] commonCmd = {"/bin/sh", "-c"};
		commands.addAll(Arrays.asList(commonCmd));
		outputApkPath = new File(SootEnvironment.outputApkDirectory).getAbsolutePath() + "/" + SootEnvironment.apkFileName.replace(".apk", "_mlf.apk");
		commands.add(String.format("%s %s %s %s %s %s", "apktool", "b", SootEnvironment.decompileDirectoryPath, "-o", outputApkPath, "-f"));
		BashRunner bash = new BashRunner(commands, false);
		bash.run();
	}
	
	public static void exec() {
		recompileApk();
		SignApk.jarsigner(outputApkPath);
	}
}
