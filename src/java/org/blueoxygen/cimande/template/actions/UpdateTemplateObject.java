/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.template.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.template.TemplateObject;
import org.blueoxygen.cimande.theme.Theme;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

/**
 * @author amix {amix_adib@yahoo.com}
 *
 */
public class UpdateTemplateObject extends TemplateObjectForm implements SessionCredentialsAware {
	
	private SessionCredentials sess;
	private String id;
	
	public String execute(){
		String result = super.execute();
		
		object = (TemplateObject) pm.getById(TemplateObject.class, getId());
		
		if (getTemplate_skin().equalsIgnoreCase(""))
			addActionError("Template skin can't be empty.");
		if (getDescription().equalsIgnoreCase(""))
			addActionError("Description can't be empty.");

		if (hasErrors()) {
			return INPUT;
		} else {
			
			theme = (Theme) pm.getById(Theme.class, getTheme_id());
			
			object.setTemplate_skin(getTemplate_skin());
			object.setDescription(getDescription());
			object.setTheme(theme);
			
			logInfo = object.getLogInformation();
			logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
			logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));	
			object.setLogInformation(logInfo);
			
			pm.save(object);
			
			return SUCCESS;
		}
	}
	
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
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
	
}
