package hk.polyu.repackage;

public class Repackage {
	
	private static void recompileApk() {
		SootEnvironment.saveApk();
	}
	
	public static void exec() {
		recompileApk();
	}

}
