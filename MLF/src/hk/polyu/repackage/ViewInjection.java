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

public class ViewInjection {
	
	public static void inject() {
		adjustLayoutFile();
	}
	
	private static void adjustLayoutFile() {
		File layoutDirectory = new File(SootEnvironment.decompileDirectoryPath + "/" + "res" + "/" + "layout");
		assert layoutDirectory.isDirectory();
		
		int processCount = 0;
		for(File layoutFile : layoutDirectory.listFiles()) {
			boolean processFlag = false;
			System.out.println(layoutFile.getAbsolutePath());
			try {
				SAXBuilder builder = new SAXBuilder();
				Document layoutDoc = builder.build(layoutFile);
				
				// inject view container
				Element rootElement = layoutDoc.getRootElement();
				Element insertFrame = null;
				Element insertLayout = null;
				if (rootElement.getName().equals("LinearLayout") || rootElement.getName().equals("FrameLayout")) {
					processFlag = true;
					
					Element elementFrameLayout = new Element("FrameLayout");
					{
						Attribute hAttr = new Attribute("layout_height", "match_parent", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
						Attribute wAttr = new Attribute("layout_width", "match_parent", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
						List<Attribute> attributes = new ArrayList<Attribute>();
						attributes.add(hAttr);
						attributes.add(wAttr);
						elementFrameLayout.setAttributes(attributes);
					}
					insertFrame = elementFrameLayout;
				
					Element elementLinearLayout = new Element("LinearLayout");
					{
						Attribute oAttr = new Attribute("orientation", "vertical", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
						Attribute hAttr = new Attribute("layout_height", "match_parent", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
						Attribute wAttr = new Attribute("layout_width", "match_parent", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
						List<Attribute> attributes = new ArrayList<Attribute>();
						attributes.add(oAttr);
						attributes.add(hAttr);
						attributes.add(wAttr);
						elementLinearLayout.setAttributes(attributes);
					}
					insertLayout = elementLinearLayout;
					
					layoutDoc.setRootElement(elementFrameLayout);
					elementFrameLayout.addContent(elementLinearLayout);
					elementLinearLayout.addContent(rootElement);
				}
				
				//
				// inject TextView
				rootElement = layoutDoc.getRootElement();
				Queue<Element> parentElementQ = new LinkedList<Element>();
				parentElementQ.add(rootElement);
				while (!parentElementQ.isEmpty()) {
					Element parentElement = parentElementQ.poll();
					if (parentElement.getChildren().isEmpty())
						continue;
					
					parentElementQ.addAll(parentElement.getChildren());
					
					if (parentElement != insertLayout) 
						continue;
					
					if (parentElement.getName().equals("LinearLayout")) {
						processFlag = true;
						
						Element elementLinearLayout = new Element("LinearLayout");
						{
							Attribute oAttr = new Attribute("orientation", "horizontal", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
							Attribute hAttr = new Attribute("layout_height", "wrap_content", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
							Attribute wAttr = new Attribute("layout_width", "match_parent", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
							List<Attribute> attributes = new ArrayList<Attribute>();
							attributes.add(oAttr);
							attributes.add(hAttr);
							attributes.add(wAttr);
							elementLinearLayout.setAttributes(attributes);
						}
						{
							for (int loopCount = 0; loopCount < 20; loopCount++) {
								Element elementTextView = new Element("TextView");
								// Attribute tAttr = new Attribute("text", "inject", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
								Attribute tAttr = new Attribute("text", "", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
								Attribute sAttr = new Attribute("textSize", "1dp", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
								Attribute cAttr = new Attribute("textColor", "#00000000", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
								Attribute hAttr = new Attribute("layout_height", "wrap_content", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
								Attribute wAttr = new Attribute("layout_width", "wrap_content", AttributeType.CDATA, Configuration.ANDROID_NAMESPACE);
								List<Attribute> attributes = new ArrayList<Attribute>();
								attributes.add(tAttr);
								attributes.add(sAttr);
								attributes.add(hAttr);
								attributes.add(wAttr);
								elementTextView.setAttributes(attributes);
							
								elementLinearLayout.addContent(elementTextView);
							}
						}
						parentElement.addContent(elementLinearLayout);
					}
				}
				
				XMLOutputter xout = new XMLOutputter();
				if (layoutFile.exists())
					layoutFile.delete(); // remove the origin layout file
		        FileWriter fw = new FileWriter(layoutFile.getAbsoluteFile());
		        xout.output(layoutDoc, fw);
		        
		        fw.flush();
		        fw.close();
		        //
		        
		        if (processFlag)
		        	processCount++;
			} catch(Exception e) {
				System.err.println(e.toString());
				throw new RuntimeException();
			}
		}
		
		System.out.println(processCount + "/" + layoutDirectory.listFiles().length + " layout files have been obfuscated !!!");
	}

}
