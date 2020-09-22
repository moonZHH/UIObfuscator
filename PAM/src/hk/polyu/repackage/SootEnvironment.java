package hk.polyu.repackage;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.jdom2.Attribute;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.Namespace;
import org.jdom2.input.SAXBuilder;

import hk.polyu.Configuration;
import hk.polyu.util.BashRunner;
import soot.G;
import soot.PackManager;
import soot.Scene;
import soot.options.Options;

public class SootEnvironment {
	private static String apkPath = "";
	
	public static String decompileDirectoryPath = "";
	public static String outputApkDirectory = "repackaged_apks";
	public static String apkFileName = "";
	public static String dftAPILevel = "29"; // the default API level
	public static String minAPILevel = "";
	public static String tgtAPILevel = "";
	public static String appAPILevel = "";
	public static String packageName = "";
	
	public static void reinit() {
		apkPath = "";
		decompileDirectoryPath = "";
		outputApkDirectory = "repackaged_apks";
		apkFileName = "";
		dftAPILevel = "29";
		minAPILevel = "";
		tgtAPILevel = "";
		appAPILevel = "";
		packageName = "";
	}
	
	private static void determineApkFileName() {
		assert !apkPath.equals("");
		int sliceNumber = apkPath.split("/").length;
		apkFileName = apkPath.split("/")[sliceNumber - 1];
	}
	
	private static void determineDecompileDirectoryPath() {
		assert !apkPath.equals("");
		decompileDirectoryPath = apkPath.replace(".apk", "");
	}
	
	private static void decompileApk() {
		ArrayList<String> commands = new ArrayList<String>();
		String[] commonCmd = {"/bin/sh", "-c"};
		commands.addAll(Arrays.asList(commonCmd));
		commands.add(String.format("%s %s %s %s %s %s", "apktool", "d", apkPath, "-o", decompileDirectoryPath, "-f"));
		BashRunner bash = new BashRunner(commands, false);
		bash.run();
	}
	
	private static void determineAPILevel() {
		appAPILevel = getAPILevel();
		adjustAPILevel();
	}
	
	private static String getAPILevel() {
		File ymlFile = new File(decompileDirectoryPath + "/" + "apktool.yml");
		if (!ymlFile.exists()) {
			System.err.println("cannot find apktool.yml file: " + ymlFile.getAbsolutePath());
			throw new RuntimeException();
		}
		try {
			BufferedReader br = new BufferedReader(new FileReader(ymlFile));
			String currentLine = null;
			while ((currentLine = br.readLine()) != null) {
				if (currentLine.trim().startsWith("minSdkVersion:")) {
					minAPILevel = currentLine.trim().replace("minSdkVersion:", "").trim().replace("'", "");
				}
				if (currentLine.trim().startsWith("targetSdkVersion:")) {
					tgtAPILevel = currentLine.trim().replace("targetSdkVersion:", "").trim().replace("'", "");
				}
			}
			br.close();
		} catch (FileNotFoundException fnfe) {
			fnfe.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		if (!tgtAPILevel.equals("")) {
			return tgtAPILevel;
		} else {
			return dftAPILevel;
		}
	}
	
	private static void adjustAPILevel() {
		String buildApiLevel = "";
		
		String defaultNamespacePrefix = Configuration.ANDROID_NAMESPACE_PREFIX;
		String namespacePrefix = "";
		
		try {
			String manifestFilePath = decompileDirectoryPath + "/" + "AndroidManifest.xml";
			File manifestFile = new File(manifestFilePath);
			SAXBuilder builder = new SAXBuilder();
			Document manifestDoc = builder.build(manifestFile);
			
			// deal with namespace
			for (Namespace ns : manifestDoc.getNamespacesInScope()) {
				if (ns.getURI().equals(Configuration.ANDROID_NAMESPACE_URI)) {
					namespacePrefix = ns.getPrefix();
					if (!namespacePrefix.equals(defaultNamespacePrefix)) {
						Configuration.ANDROID_NAMESPACE_PREFIX = namespacePrefix;
					}
				}
			}
			
			Element manifestElement = manifestDoc.getRootElement();
			assert manifestElement != null;
			
			// deal with "platformBuildVersionCode" attribute
			Attribute platformAttr = manifestElement.getAttribute("compileSdkVersion", Configuration.ANDROID_NAMESPACE);
			if (platformAttr == null)
				platformAttr = manifestElement.getAttribute("platformBuildVersionCode", Namespace.NO_NAMESPACE);
			
			if (platformAttr != null) {
				buildApiLevel = platformAttr.getValue();
			}
			
			if (buildApiLevel != "") {
				appAPILevel = buildApiLevel;
			}
		} catch(JDOMException je) {
			je.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}
	
	public static String determineSootClassPath(String platformPath) {
		return platformPath + "/" + "android-" + appAPILevel + "/" + "android.jar";
			 // + ":" + "/home/zhouhao/Android/Sdk/extras/android/m2repository/com/android/support/support-v4/24.1.1/support-v4-24.1.1-sources.jar"
			 // + ":" + "/home/zhouhao/Android/Sdk/extras/android/m2repository/com/android/support/appcompat-v7/24.1.1/appcompat-v7-24.1.1-sources.jar"
			 // + ":" + "/home/zhouhao/Android/Sdk/extras/android/m2repository/com/android/support/support-v13/24.1.1/support-v13-24.1.1-sources.jar";
	}
	
	private static void determinePackageName() {
		String defaultNamespacePrefix = Configuration.ANDROID_NAMESPACE_PREFIX;
		String namespacePrefix = "";
		
		try {
			String manifestFilePath = decompileDirectoryPath + "/" + "AndroidManifest.xml";
			File manifestFile = new File(manifestFilePath);
			SAXBuilder builder = new SAXBuilder();
			Document manifestDoc = builder.build(manifestFile);
			
			// deal with namespace
			for (Namespace ns : manifestDoc.getNamespacesInScope()) {
				if (ns.getURI().equals(Configuration.ANDROID_NAMESPACE_URI)) {
					namespacePrefix = ns.getPrefix();
					if (!namespacePrefix.equals(defaultNamespacePrefix)) {
						Configuration.ANDROID_NAMESPACE_PREFIX = namespacePrefix;
					}
				}
			}
			
			Element manifestElement = manifestDoc.getRootElement();
			assert manifestElement != null;
			
			// deal with "package" attribute
			Attribute packageAttr = manifestElement.getAttribute("package", Namespace.NO_NAMESPACE);
			packageName = packageAttr.getValue();
			
			// patch
			if (packageName.equals("com.tekciz.idol2012")) {
				packageName = "com.tekciz.tvshow";
			}
		} catch(JDOMException je) {
			je.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}
	
	public static void init(String apkPath, String platformPath) {
		// reset (should pay special attention to the operation sequence)
		SootEnvironment.apkPath = apkPath;
		determineApkFileName();
		determineDecompileDirectoryPath();
		decompileApk();
		determineAPILevel();
		determinePackageName();
		System.out.println("[DEBUG] API level -> " + appAPILevel);
		G.reset();
		
		// set soot environment
		Options.v().set_no_bodies_for_excluded(true);
		Options.v().set_allow_phantom_refs(true);
		Options.v().set_whole_program(true);
		Options.v().set_process_multiple_dex(true);
		Options.v().set_src_prec(Options.src_prec_apk_class_jimple);
		Options.v().set_output_format(Options.output_format_dex);
		List<String> processList = new ArrayList<String>();
		processList.add(apkPath);
		processList.add("/home/zhouhao/UIObfuscation/PAMUtil/bin");
		Options.v().set_process_dir(processList);
		Options.v().set_soot_classpath(determineSootClassPath(platformPath));
		Options.v().set_keep_line_number(false);
		Options.v().set_keep_offset(false);
		Options.v().set_ignore_resolving_levels(true);
		
		Scene.v().loadNecessaryClasses();
	}
	
	public static void saveApk() {
		Options.v().set_output_dir(outputApkDirectory);
		Options.v().force_overwrite();
		PackManager.v().writeOutput();
		
		String outputApkPath = new File(outputApkDirectory).getAbsolutePath() + "/" + apkFileName;
		String alignedApkPath = new File(outputApkDirectory).getAbsolutePath() + "/" + apkFileName.replace(".apk", "_pam.apk");
		// signing
		SignApk.jarsigner(outputApkPath);
		// aligning
		SignApk.zipalign(outputApkPath, alignedApkPath);
	}
	
	public static void saveApk(String outputAppDirectory, String outputAppPath) {
		Options.v().set_output_dir(outputAppDirectory);
		Options.v().force_overwrite();
		PackManager.v().writeOutput();
		SignApk.jarsigner(outputAppPath);
	}
	
	// for module testing
	public static void main(String[] args) {
		SootEnvironment.init(Configuration.apkPath, Configuration.platformPath);
		SootEnvironment.saveApk();
	}

}
