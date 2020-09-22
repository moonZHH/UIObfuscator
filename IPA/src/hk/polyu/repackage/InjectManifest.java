package hk.polyu.repackage;

import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import org.jdom2.Attribute;
import org.jdom2.AttributeType;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.jdom2.output.XMLOutputter;

import hk.polyu.Configuration;

public class InjectManifest {
	
	public static void inject() {
		adjustManifestFile();
	}
	
	private static void adjustManifestFile() {
		File manifestFile = new File(SootEnvironment.decompileDirectoryPath + "/" + "AndroidManifest.xml");
		assert manifestFile.exists();
		
		try {
			SAXBuilder builder = new SAXBuilder();
			Document manifestDoc = builder.build(manifestFile);
				
			// inject view container
			Element manifestElement = manifestDoc.getRootElement(); // manifest Element
			assert manifestElement.getName().equals("manifest");
			
			Element applicationElement = manifestElement.getChild("application");
			Element elementActivity = new Element("activity");
			{
				Attribute nAttr = new Attribute("name", "hk.polyu.ProxyActivity", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
				List<Attribute> attributes = new ArrayList<Attribute>();
				attributes.add(nAttr);
				elementActivity.setAttributes(attributes);
			}
			applicationElement.addContent(elementActivity);
				
			XMLOutputter xout = new XMLOutputter();
			if (manifestFile.exists())
				manifestFile.delete(); // remove the origin manifest file
		    FileWriter fw = new FileWriter(manifestFile.getAbsoluteFile());
		    xout.output(manifestDoc, fw);
		        
		    fw.flush();
		    fw.close();
		} catch(Exception e) {
			System.err.println(e.toString());
			throw new RuntimeException();
		}
	}
}
