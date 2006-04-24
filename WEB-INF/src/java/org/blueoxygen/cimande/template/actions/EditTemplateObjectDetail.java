/**
 * 
 */
package org.blueoxygen.cimande.template.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.template.TemplateObject;
import org.blueoxygen.cimande.descriptors.Collection;
import org.blueoxygen.cimande.descriptors.Descriptor;
/**
 * @author iKRomy
 *
 */
public class EditTemplateObjectDetail extends ViewTemplateObjectDetail {
	protected TemplateObject templateObject;
	protected Descriptor descriptor;
	protected Collection collection;
	
	private List templateObjects = new ArrayList();
	private List descriptors = new ArrayList();
	private List collections = new ArrayList();
	
	public String execute() {

		String result = super.execute();
		
		templateObjects = pm.findAllSorted(TemplateObject.class, "template_skin");
		descriptors = pm.findAllSorted(Descriptor.class, "name");
		collections = pm.findAllSorted(Collection.class, "name");
		
		
		return SUCCESS;
				
	}	
	
	public TemplateObject getTemplateObject() {
		return templateObject;
	}
	public void setTemplateObject(TemplateObject templateObject) {
		this.templateObject = templateObject;
	}
	
	public Descriptor getDescriptor(){
		return descriptor;
	}
	
	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}
	
	public Collection getCollection() {
		return collection;
	}
	
	public void setCollection(Collection collection) {
		this.collection = collection;
	}
	public List getCollections() {
		return collections;
	}
	public void setCollections(List collections) {
		this.collections = collections;
	}
	public List getTemplateObjects() {
		return templateObjects;
	}
	public void setTemplateObjects(List templateObjects) {
		this.templateObjects = templateObjects;
	}
	public List getDescriptors() {
		return descriptors;
	}
	public void setDescriptors(List descriptors) {
		this.descriptors = descriptors;
	}
	
}
