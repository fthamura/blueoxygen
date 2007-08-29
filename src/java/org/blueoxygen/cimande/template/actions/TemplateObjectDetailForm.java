/**
 * 
 */
package org.blueoxygen.cimande.template.actions;


import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Collection;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.template.TemplateObject;
import org.blueoxygen.cimande.template.TemplateObjectDetail;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Ikromy
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class TemplateObjectDetailForm extends ActionSupport implements PersistenceAware{
	protected PersistenceManager pm;
	protected LogInformation logInfo;
	
	protected TemplateObjectDetail objectDetail;
	protected Collection collection;
	protected Descriptor descriptor;
	protected TemplateObject templateObject;
	
	
	private String description="";
	private int type = -1;
	private String id;
	
	private List descriptors = new ArrayList();
	private List collections = new ArrayList();
	private List templateObjects = new ArrayList();
	
	private String template_object_id="";
	private String collection_id="";
	private String descriptor_id="";
	
	public String execute(){
		descriptors = pm.findAllSorted(Descriptor.class, "name");
		collections = pm.findAllSorted(Collection.class, "name");
		templateObjects = pm.findAllSorted(TemplateObject.class, "template_skin");
		return SUCCESS;
	}
	
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}


	public TemplateObject getTemplateObject() {
		return templateObject;
	}
	public void setTemplateObject(TemplateObject templateObject) {
		this.templateObject = templateObject;
	}
	public Collection getCollection() {
		return collection;
	}


	public void setCollection(Collection collection) {
		this.collection = collection;
	}


	public String getCollection_id() {
		return collection_id;
	}


	public void setCollection_id(String collection_id) {
		this.collection_id = collection_id;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Descriptor getDescriptor() {
		return descriptor;
	}


	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}


	public String getDescriptor_id() {
		return descriptor_id;
	}


	public void setDescriptor_id(String descriptor_id) {
		this.descriptor_id = descriptor_id;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public LogInformation getLogInfo() {
		return logInfo;
	}


	public void setLogInfo(LogInformation logInfo) {
		this.logInfo = logInfo;
	}


	public TemplateObjectDetail getObjectDetail() {
		return objectDetail;
	}


	public void setObjectDetail(TemplateObjectDetail objectDetail) {
		this.objectDetail = objectDetail;
	}


	public int getType() {
		return type;
	}


	public void setType(int type) {
		this.type = type;
	}
	public String getTemplate_object_id() {
		return template_object_id;
	}
	public void setTemplate_object_id(String template_object_id) {
		this.template_object_id = template_object_id;
	}


	public List getCollections() {
		return collections;
	}


	public void setCollections(List collections) {
		this.collections = collections;
	}


	public List getDescriptors() {
		return descriptors;
	}


	public void setDescriptors(List descriptors) {
		this.descriptors = descriptors;
	}


	public List getTemplateObjects() {
		return templateObjects;
	}


	public void setTemplateObjects(List templateObjects) {
		this.templateObjects = templateObjects;
	}
	
}
