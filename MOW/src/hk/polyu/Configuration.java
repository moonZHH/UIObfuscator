package hk.polyu;

import org.jdom2.Namespace;

public class Configuration {
	
	public static String apkPath = "";
	
	public static String apkDirectory = "/home/zhouhao/UIObfuscation/experiment_frameworks_new/repackage_apks";
	public static String apkOutputDirectory = "/home/zhouhao/UIObfuscation/experiment_frameworks_new/repackage_apks_mow";
	
	public static String platformPath = "/home/zhouhao/Android/Sdk/platforms";
	
	public static String ANDROID_NAMESPACE_PREFIX = "android";
	public static String ANDROID_NAMESPACE_URI = "http://schemas.android.com/apk/res/android";
	public static Namespace ANDROID_NAMESPACE = Namespace.getNamespace(ANDROID_NAMESPACE_PREFIX, ANDROID_NAMESPACE_URI);
	
	public static boolean useAAPT2 = false;
}
