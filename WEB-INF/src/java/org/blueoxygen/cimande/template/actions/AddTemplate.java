/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.template.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;

import org.blueoxygen.cimande.template.Template;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;


/**
 *
 * @author fauzan prasetyo™
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AddTemplate extends TemplateForm implements SessionCredentialsAware{
	private SessionCredentials sess;
	private String id="";
	protected Descriptor templateDescriptor = new Descriptor();
	private String descriptor_id="";
	
	
	
	public String execute()
	{
	

		if(getName().equalsIgnoreCase("")){
			addActionError("please input Name");
			return INPUT;
		}
		
		if(getDescription().equalsIgnoreCase("")){
			addActionError("please input description");
			return INPUT;
		}
		
		templateDescriptor = (Descriptor) pm.getById(Descriptor.class, getDescriptor_id());
		
				template = new Template();
				template.setName(getName());
				template.setUrl_xsl_template(getUrl_xsl_template());
				template.setDescription(getDescription());
				template.setFolder(getFolder());
				template.setDescriptor(templateDescriptor);

				
		   
		logInfo = new LogInformation();
		logInfo.setCreateBy(sess.getCurrentUser().getId());
		logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		template.setLogInformation(logInfo);
		
		pm.save(template);
		return SUCCESS;
	}
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
		
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
	public Descriptor getTemplateDescriptor() {
		return templateDescriptor;
	}
	public void setTemplateDescriptor(Descriptor templateDescriptor) {
		this.templateDescriptor = templateDescriptor;
	}
	
	
}
