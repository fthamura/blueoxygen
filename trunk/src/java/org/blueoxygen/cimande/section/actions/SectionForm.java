/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.section.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.section.Section;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class SectionForm extends ActionSupport implements PersistenceAware{
	protected Section section;
	protected PersistenceManager pm;
	protected LogInformation logInfo;
	
	private String id="";
	private String code="";
	private String description="";
	private String url_section="";
	private int activeFlag=1;	
	
	private String descriptor_id="";
	private List descriptors = new ArrayList();
	
	public String execute(){

		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}

	

	public Section getSection() {
		return section;
	}

	
	public void setSection(Section section) {
		this.section = section;
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
	 * @return Returns the url_section
	 */
	public String getUrl_section() {
		return url_section;
	}
	/**
	 * @param url_section The url_section to set.
	 */
	public void setUrl_section(String url_section) {
		this.url_section = url_section;
	}

	public int getActiveFlag() {
		return activeFlag;
	}

	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}
	
}
