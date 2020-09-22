package hk.polyu.repackage;

public class RepackageSoot {
	public static String outputApkPath = "";
	
	private static void recompileApk() {
		SootEnvironment.saveApk();
	}
	
	public static void exec() {
		recompileApk();
	}

}
