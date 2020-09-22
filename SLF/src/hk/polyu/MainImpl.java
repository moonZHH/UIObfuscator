package hk.polyu;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.jdom2.Namespace;

import hk.polyu.repackage.GenResourceFile;
import hk.polyu.repackage.ParseARSC;
import hk.polyu.repackage.ParseApk;
import hk.polyu.repackage.ParseManifest;
import hk.polyu.repackage.ParseXML;
import hk.polyu.repackage.SootEnvironment;

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
			idx++;
			Configuration.apkPath = apkPath;
			System.out.println("[DEBUG] processing " + idx + "th apk => " + apkPath);
		
			// the execution order below should not be changed
			try {
				System.out.println("Step_0 -> Cleanup");
				cleanup();
				System.out.println("=======> Step_0 finish");
				
				System.out.println("Step_1 -> SootEnvironment.initSoot(*)");
				SootEnvironment.reinit();
				SootEnvironment.init(Configuration.apkPath, Configuration.platformPath);
				System.out.println("=======> Step_1 finish");
		
				System.out.println("Step_2 -> Dealing with resources.arsc");
				ParseARSC arscParser = new ParseARSC();
				arscParser.exec();
				System.out.println("=======> Step_2 finish");
				
				Thread.sleep(1000);
		
				System.out.println("Step_3 -> Dealing with AndroidManifset.xml");
				ParseManifest manifestParser = new ParseManifest();
				manifestParser.exec();
				System.out.println("=======> Step_3 finish");
				
				Thread.sleep(1000);
		
				System.out.println("Step_4 -> Dealing with layout file");
				ParseXML xmlParser = new ParseXML();
				xmlParser.exec();
				System.out.println("=======> Step_4 finish");
				
				Thread.sleep(1000);
				
				System.out.println("Step_5 -> SootEnvironment.initSoot(*)");
				SootEnvironment.reinit();
				SootEnvironment.init(Configuration.apkPath, Configuration.platformPath);
				System.out.println("=======> Step_5 finish");
		
				System.out.println("Step_6 -> Injecting code");
				ParseApk apkParser = new ParseApk();
				apkParser.exec();
				System.out.println("=======> Step_6 finish");
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
		
		File resourceFile = new File(GenResourceFile.temp_resFile);
		if (resourceFile.exists())
			resourceFile.delete();
	}
			
	// move the repackaged file to a dedicated directory
	private static void postProcess() {
		// check whether the repackaged APP has been successfully constructed
		File outputApkDirectory = new File(SootEnvironment.outputApkDirectory);
		assert outputApkDirectory.exists();
		
		String outputApkPath = null;
		for (File file : outputApkDirectory.listFiles()) {
			if (file.getName().endsWith("_slf.apk")) {
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
