/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.template.actions;

import java.util.ArrayList;
import java.util.List;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.template.Template;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *@author fauzan prasetyo™[n0mad_hier@yahoo.com]
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class TemplateForm extends ActionSupport implements PersistenceAware{
	protected Template template;
	protected PersistenceManager pm;
	protected LogInformation logInfo;
	
	private String id;
	private String name="";
	private String description="";
	private String url_xsl_template="";
	private String folder="";
	
	private String descriptor_id="";
	private List descriptors = new ArrayList();
	
	public String execute(){

		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
		}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	
	public String getFolder() {
		return folder;
	}

	public void setFolder(String folder) {
		this.folder = folder;
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

	public Template getTemplate() {
		return template;
	}

	public void setTemplate(Template template) {
		this.template = template;
	}

	public String getUrl_xsl_template() {
		return url_xsl_template;
	}

	public void setUrl_xsl_template(String url_xsl_template) {
		this.url_xsl_template = url_xsl_template;
	}

	

}
