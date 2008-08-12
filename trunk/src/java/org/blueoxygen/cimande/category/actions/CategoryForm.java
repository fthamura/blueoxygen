/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.category.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.category.Category;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class CategoryForm extends ActionSupport implements PersistenceAware{
	protected Category category;
	protected PersistenceManager pm;
	protected LogInformation logInfo;
	
	private String id="";
	private String code="";
	private String description="";
	private String url_category_image="";
	private int activeFlag = -1;
	private String iparentcode="";
	
	private String descriptor_id="";
	private List descriptors = new ArrayList();
	
	public String execute(){

		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}

	

	public Category getCategory() {
		return category;
	}

	
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDescriptor_id() {
		return descriptor_id;
	}

	public void setDescriptor_id(String descriptor_id) {
		this.descriptor_id = descriptor_id;
	}

	public List getDescriptors() {
		return descriptors;
	}

	public void setDescriptors(List descriptors) {
		this.descriptors = descriptors;
	}

	public String getIparentcode() {
		return iparentcode;
	}

	public void setIparentcode(String iparentcode) {
		this.iparentcode = iparentcode;
	}

	public LogInformation getLogInfo() {
		return logInfo;
	}

	public void setLogInfo(LogInformation logInfo) {
		this.logInfo = logInfo;
	}

	
	/**
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}
	/**
	 * @param id The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return Returns the url_category_image.
	 */
	public String getUrl_category_image() {
		return url_category_image;
	}
	/**
	 * @param url_category_image The url_category_image to set.
	 */
	public void setUrl_category_image(String url_category_image) {
		this.url_category_image = url_category_image;
	}

	public int getActiveFlag() {
		return activeFlag;
	}

	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}
	
}
