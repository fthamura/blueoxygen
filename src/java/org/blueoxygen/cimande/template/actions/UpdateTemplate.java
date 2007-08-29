/*
 * Created on Aug 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Name and Comments
 */
package org.blueoxygen.cimande.template.actions;


import java.sql.Timestamp;


import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.template.Template;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

 
/**
 * @author fauzan prasetyo™[n0mad_hier@yahoo.com]
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class UpdateTemplate extends TemplateForm implements SessionCredentialsAware{
	private SessionCredentials sess;
	private String id;

	protected Descriptor templateDescriptor = new Descriptor();

	public String execute(){

		template = (Template) pm.getById(Template.class, getId());
		if(getName().equalsIgnoreCase("")){
			addActionError("please input name");
			return INPUT;
		}
		if(getDescription().equalsIgnoreCase("")){
			addActionError("please input description");
			return INPUT;
		}
		
		templateDescriptor = (Descriptor) pm.getById(Descriptor.class, getDescriptor_id());
		
		template.setName(getName());
		template.setDescription(getDescription());
		template.setUrl_xsl_template(getUrl_xsl_template());
		template.setFolder(getFolder());
		template.setDescriptor(templateDescriptor);
		
		logInfo = template.getLogInformation();
		logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		template.setLogInformation(logInfo);
		
		pm.save(template);
		return SUCCESS;
	}

	

	private String getUrl_Xsl_Template() {
		// TODO Auto-generated method stub
		return null;
	}



	public Descriptor getTemplateDescriptor() {
		return templateDescriptor;
	}



	public void setTemplateDescriptor(Descriptor templateDescriptor) {
		this.templateDescriptor = templateDescriptor;
	}


	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}
