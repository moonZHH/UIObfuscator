package hk.polyu.repackage;

import java.io.File;

public class GenTgtApk {
	
	public void exec() {
		String outputAppDirectory = "tgt_apk";
		String appName = SootEnvironment.apkFileName;
		String outputAppPath = outputAppDirectory + "/" + appName;
		File outputAppFile = new File(outputAppPath);
		if (outputAppFile.exists()) {
			outputAppFile.delete();
		}
		SootEnvironment.saveApk(outputAppDirectory, outputAppPath);
	}

}
