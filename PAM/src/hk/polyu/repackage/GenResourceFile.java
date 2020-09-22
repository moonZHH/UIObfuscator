package hk.polyu.repackage;

import java.util.ArrayList;
import java.util.Arrays;

import hk.polyu.Configuration;
import hk.polyu.util.BashRunner;

public class GenResourceFile {
	
	public static String temp_resFile = "temp_resources.zip";
	
	public static void generate() {
		ArrayList<String> commands = new ArrayList<String>();
		String[] commonCmd = { "/bin/sh", "-c" };
		commands.addAll(Arrays.asList(commonCmd));
		
		String aapt = "aapt";
		if (Configuration.useAAPT2)
			aapt = "aapt2";
		
		if (SootEnvironment.minAPILevel.equals("") && SootEnvironment.tgtAPILevel.equals("")) {
			commands.add(String.format("%s %s %s %s %s %s %s %s %s %s %s", 
					aapt, "package", "-f", 
					"-M", SootEnvironment.decompileDirectoryPath + "/" + "AndroidManifest.xml",
					"-I", SootEnvironment.determineSootClassPath(Configuration.platformPath),
					"-S", SootEnvironment.decompileDirectoryPath + "/" + "res",
					"-F", temp_resFile));
		} else if (SootEnvironment.minAPILevel.equals("") && !SootEnvironment.tgtAPILevel.equals("")) {
			commands.add(String.format("%s %s %s %s %s %s %s %s %s %s %s %s %s", 
					aapt, "package", "-f", 
					"-M", SootEnvironment.decompileDirectoryPath + "/" + "AndroidManifest.xml",
					"--target-sdk-version", SootEnvironment.tgtAPILevel,
					"-I", SootEnvironment.determineSootClassPath(Configuration.platformPath),
					"-S", SootEnvironment.decompileDirectoryPath + "/" + "res",
					"-F", temp_resFile));
		} else if (!SootEnvironment.minAPILevel.equals("") && SootEnvironment.tgtAPILevel.equals("")) {
			commands.add(String.format("%s %s %s %s %s %s %s %s %s %s %s %s %s", 
					aapt, "package", "-f", 
					"-M", SootEnvironment.decompileDirectoryPath + "/" + "AndroidManifest.xml",
					"--min-sdk-version", SootEnvironment.minAPILevel,
					"-I", SootEnvironment.determineSootClassPath(Configuration.platformPath),
					"-S", SootEnvironment.decompileDirectoryPath + "/" + "res",
					"-F", temp_resFile));
		} else if (!SootEnvironment.minAPILevel.equals("") && !SootEnvironment.tgtAPILevel.equals("")) {
			commands.add(String.format("%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s", 
					aapt, "package", "-f", 
					"--min-sdk-version", SootEnvironment.minAPILevel,
					"--target-sdk-version", SootEnvironment.tgtAPILevel,
					"-M", SootEnvironment.decompileDirectoryPath + "/" + "AndroidManifest.xml",
					"-I", SootEnvironment.determineSootClassPath(Configuration.platformPath),
					"-S", SootEnvironment.decompileDirectoryPath + "/" + "res",
					"-F", temp_resFile));
		}
		BashRunner bash = new BashRunner(commands, false);
		bash.run();
	}

}
