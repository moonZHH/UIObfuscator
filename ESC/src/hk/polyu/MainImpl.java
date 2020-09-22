package hk.polyu;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.jdom2.Namespace;

import hk.polyu.repackage.Repackage;
import hk.polyu.repackage.SootEnvironment;
import hk.polyu.repackage.StringManipulation;

public class MainImpl {
	
	public static void main(String[] args) {
		
		File apkDirectory = new File(Configuration.apkDirectory);
		assert apkDirectory.isDirectory();
		
		List<String> apkPaths = new ArrayList<>();
		for (File apkFile : apkDirectory.listFiles()) {
			if (!apkFile.getName().endsWith(".apk"))
				continue;
			apkPaths.add(apkFile.getAbsolutePath());
		}
		
		preprocess();
		
		int idx = 0;
		for (String apkPath : apkPaths) {
			// if (!apkPath.contains("ca.rmen.android.frenchcalendar_1182"))
				// continue;
			// if (idx > 10)
				// continue;
			
			idx++;
			Configuration.apkPath = apkPath;
			System.out.println("[DEBUG] processing " + idx + "th apk => " + apkPath);
			
			// pay special attention to adjusting the following operation sequence
			try {
				System.out.println("Step_0 -> Cleanup");
				cleanup();
				System.out.println("=======> Step_0 finish");
				
				System.out.println("Step_1 -> SootEnvironment.initSoot(*)");
				SootEnvironment.init(Configuration.apkPath, Configuration.platformPath);
				System.out.println("=======> Step_1 finish");
		
				System.out.println("Step_2 -> StringManipulation.generate()");
				StringManipulation.generate();
				System.out.println("=======> Step_2 finish");
				
				System.out.println("Step_3 -> Repackage.exec()");
				Repackage.exec();
				System.out.println("=======> Step_3 finish");
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				postProcess();
			}
		}
	}
	
	// create the dedicated directory, which is used to store the repackaged APK file
	private static void preprocess() {
		File apkOutputDirectory = new File(Configuration.apkOutputDirectory);
		if (apkOutputDirectory.exists()) {
			try {
				FileUtils.cleanDirectory(apkOutputDirectory);
			} catch(Exception e) {
				// do nothing
			}
		} else {
			apkOutputDirectory.mkdirs();
		}
	}
		
	private static void cleanup() {
		File outputApkDirectory = new File(SootEnvironment.outputApkDirectory);
		if (outputApkDirectory.exists()) {
			assert outputApkDirectory.isDirectory();
			
			for (File file : outputApkDirectory.listFiles()) {
				if (file.isFile())
					file.delete();
				if (file.isDirectory()) 
					try {
						FileUtils.deleteDirectory(file);
					} catch(Exception e) {
						// do nothing
					}
			}
		}
	}
		
	// move the repackaged file to a dedicated directory
	private static void postProcess() {
		// check whether the repackaged APP has been successfully constructed
		File outputApkDirectory = new File(SootEnvironment.outputApkDirectory);
		assert outputApkDirectory.exists();
		
		String outputApkPath = null;
		for (File file : outputApkDirectory.listFiles()) {
			if (file.getName().endsWith("_esc.apk")) {
				assert outputApkPath == null;
				outputApkPath = file.getAbsolutePath();
			}
		}
		
		// move the repackaged APK file to the dedicated directory
		if (outputApkPath != null) {
			try {
				FileUtils.moveFileToDirectory(new File(outputApkPath), new File(Configuration.apkOutputDirectory), true);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			File apkFile = new File(Configuration.apkPath);
			assert apkFile.exists();
			
			apkFile.delete();
		}
		
		// reset the CONSTANTs
		Configuration.ANDROID_NAMESPACE_PREFIX = "android";
		Configuration.ANDROID_NAMESPACE_URI = "http://schemas.android.com/apk/res/android";
		Configuration.ANDROID_NAMESPACE = Namespace.getNamespace(Configuration.ANDROID_NAMESPACE_PREFIX, Configuration.ANDROID_NAMESPACE_URI);
	}
}
