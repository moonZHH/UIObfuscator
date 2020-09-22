package hk.polyu.repackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

import org.apache.commons.io.FileUtils;
import org.jdom2.Attribute;
import org.jdom2.AttributeType;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.Namespace;
import org.jdom2.input.SAXBuilder;
import org.jdom2.output.XMLOutputter;

import hk.polyu.Configuration;

public class ParseManifest {
	
	public static String packageName = "";
	public static String applicationClassName = "";
	
	public ZipFile moveManifestFile(String srcApkPath) throws IOException, FileNotFoundException {
		File srcApk = new File(srcApkPath);
		// get a temp file
		String tempApkPath = srcApkPath.replace(".apk", "_tmp.apk");
		File tempApk = new File(tempApkPath);
		FileUtils.copyFile(srcApk, tempApk);
		
		srcApk.delete();
		srcApk.createNewFile();
		
		// Part I: 
		byte[] buf = new byte[4096 * 1024];
		ZipInputStream zin = new ZipInputStream(new FileInputStream(tempApk));
		ZipOutputStream out = new ZipOutputStream(new FileOutputStream(srcApk));
		
		ZipEntry entry = zin.getNextEntry();
		while (entry != null) {
			String entryName = entry.getName();
			if (!entryName.equals("AndroidManifest.xml")) {
				// Add ZIP entry to output stream.
				out.putNextEntry(new ZipEntry(entryName));
				// Transfer bytes from the ZIP file to the output file
				int len;
				while ((len = zin.read(buf)) > 0) {
					out.write(buf, 0, len);
				}
			}
			entry = zin.getNextEntry();
		}
		// Close the streams
		zin.close();
		tempApk.delete();
		
		// Part II: 
		File tempResFile = new File(GenResourceFile.temp_resFile);
		if (!tempResFile.exists()) {
			out.close();
			throw new FileNotFoundException();
		}
		ZipInputStream zinRes = new ZipInputStream(new FileInputStream(tempResFile));
		
		entry = zinRes.getNextEntry();
		while (entry != null) {
			String entryName = entry.getName();
			if (entryName.equals("AndroidManifest.xml")) {
				// Add ZIP entry to output stream.
				out.putNextEntry(new ZipEntry(entryName));
				// Transfer bytes from the ZIP file to the output file
				int len;
				while ((len = zinRes.read(buf)) > 0) {
					out.write(buf, 0, len);
				}
				break;
			}
		}
		out.closeEntry();

		zinRes.close();
		out.close();
		
		return new ZipFile(srcApk);
	}
	
	/**
	 * 1. add permission "<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>"
	 */
	private void modifyManifestFile() throws JDOMException, IOException {
		// nullify
		packageName = "";
		applicationClassName = "";
		
		String manifestFilePath = SootEnvironment.decompileDirectoryPath + "/" + "AndroidManifest.xml";
		File manifestFile = new File(manifestFilePath);
        SAXBuilder builder = new SAXBuilder();
        Document manifestDoc = builder.build(manifestFile);
        
        Element manifestElement = manifestDoc.getRootElement();
        assert manifestElement.getName().equals("manifest");
        
        // [1] add permission "<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>"
        boolean hasWritePermission = false;
        for (Element permissionElement : manifestElement.getChildren("uses-permission")) {
        	
        	Attribute nameAttr = permissionElement.getAttribute("name", Configuration.ANDROID_NAMESPACE);
        	assert nameAttr != null;
        	
        	if (nameAttr.getValue().equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
        		hasWritePermission = true;
        	}
        }
        if (hasWritePermission == false) {
        	Element writePermissionElement = new Element("uses-permission");
        	Attribute nameAttr = new Attribute("name", "android.permission.WRITE_EXTERNAL_STORAGE", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
        	writePermissionElement.setAttribute(nameAttr);
        	
        	manifestElement.addContent(writePermissionElement);
        }
        
        // then, get the package name of this apk
        Attribute packageAttr = manifestElement.getAttribute("package", Namespace.NO_NAMESPACE);
        if (packageAttr != null) {
        	packageName = packageAttr.getValue();
        }
        assert packageName != "";
        
        // [2] check declared application class
        Element applicationElement = manifestElement.getChild("application");
        assert applicationElement != null;
        
        Attribute nameAttr = applicationElement.getAttribute("name", Configuration.ANDROID_NAMESPACE);
        if (nameAttr != null) {
        	applicationClassName = (String) nameAttr.getValue();
        	if (!applicationClassName.contains(".") && !applicationClassName.equals("")) {
				applicationClassName = packageName + "." + applicationClassName;
			} else if (applicationClassName.startsWith(".")) {
				applicationClassName = packageName + applicationClassName;
			}
        } else {
        	// TODO: play a trick here
        	assert applicationClassName.equals("");
        	
        	String trickApplicationClassName = packageName + "." + "ArtificialApplicaion";
        	Attribute applicationNameAttr = new Attribute("name", trickApplicationClassName, AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
        	
        	applicationElement.setAttribute(applicationNameAttr);
        	/*
        	List<Attribute> attrList = applicationElement.getAttributes();
        	attrList.add(applicationNameAttr);
        	applicationElement.setAttributes(attrList);
        	*/
        }
        
        // write to 
        manifestFile.delete();
        manifestFile.createNewFile();
        XMLOutputter xout = new XMLOutputter();
        FileWriter fw = new FileWriter(manifestFile);
        xout.output(manifestDoc, fw);
        fw.close();
    }
	
	public void exec() throws IOException, JDOMException, FileNotFoundException {
		modifyManifestFile();
		GenResourceFile.generate();
		moveManifestFile(GenSrcApk.srcApkPath);
		
		if (new File(Configuration.apkPath).exists()) {
			new File(Configuration.apkPath).delete();
		}
		FileUtils.copyFile(new File(GenSrcApk.srcApkPath), new File(Configuration.apkPath));
	}

}
