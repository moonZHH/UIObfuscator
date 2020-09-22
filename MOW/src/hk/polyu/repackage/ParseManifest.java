package hk.polyu.repackage;

import java.io.File;
import java.io.FileInputStream;
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
import org.jdom2.input.SAXBuilder;
import org.jdom2.output.XMLOutputter;

import hk.polyu.Configuration;

public class ParseManifest {
	
	public ZipFile moveManifestFile(String srcApkPath) throws IOException {
		File srcApk = new File(Configuration.apkPath);
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

		zinRes.close();
		out.close();
		
		return new ZipFile(srcApk);
	}
	
	/**
	 * 1. add permission <uses-permission android:name="android.permission.ACTION_MANAGE_OVERLAY_PERMISSION" /> 
	 * 2. add permission <uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW" /> 
	 */
	private void modifyManifestFile() throws JDOMException, IOException {
		String manifestFilePath = SootEnvironment.decompileDirectoryPath + "/" + "AndroidManifest.xml";
		File manifestFile = new File(manifestFilePath);
        SAXBuilder builder = new SAXBuilder();
        Document manifestDoc = builder.build(manifestFile);
        
        Element manifestElement = manifestDoc.getRootElement();
        assert manifestElement.getName().equals("manifest");
        
        // [1] add permission "<uses-permission android:name="android.permission.ACTION_MANAGE_OVERLAY_PERMISSION"/>"
        // [2] add permission "<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW"/>"
        {
        	Element overlayPermissionElement1 = new Element("uses-permission");
        	Attribute nameAttr1 = new Attribute("name", "android.permission.ACTION_MANAGE_OVERLAY_PERMISSION", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
        	overlayPermissionElement1.setAttribute(nameAttr1);
        	manifestElement.addContent(overlayPermissionElement1);
        	
        	Element overlayPermissionElement2 = new Element("uses-permission");
        	Attribute nameAttr2 = new Attribute("name", "android.permission.SYSTEM_ALERT_WINDOW", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
        	overlayPermissionElement2.setAttribute(nameAttr2);
        	manifestElement.addContent(overlayPermissionElement2);
        }
        
        // write to 
        manifestFile.delete();
        manifestFile.createNewFile();
        XMLOutputter xout = new XMLOutputter();
        FileWriter fw = new FileWriter(manifestFile);
        xout.output(manifestDoc, fw);
        fw.close();
    }
	
	public void exec() {
		try {
			modifyManifestFile();
			GenResourceFile.generate();
			moveManifestFile(Configuration.apkPath);
		} catch(IOException ioe) {
			ioe.printStackTrace();
		} catch (JDOMException je) {
			je.printStackTrace();
		}
	}

}
