/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.template.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.template.TemplateObject;
import org.blueoxygen.cimande.theme.Theme;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;

/**
 * @author amix {amix_adib@yahoo.com}
 *
 */
public class AddTemplateObject extends TemplateObjectForm implements SessionCredentialsAware {
	
private SessionCredentials sessCredentials;
	
	public String execute(){
		
		TemplateObject object = new TemplateObject();
		
		if(getTemplate_skin().equalsIgnoreCase("")){
			addActionError("Template Skin can't be empty");
		}
		if(getDescription().equalsIgnoreCase("")){
			addActionError("Description can't be empty");
		}
		
		if (hasErrors()) {
			return INPUT;
	
		} else {
			
			theme = (Theme) pm.getById(Theme.class, getTheme_id());
			
			object.setTemplate_skin(getTemplate_skin());
			object.setDescription(getDescription());
			object.setTheme(theme);
			
			LogInformation log = new LogInformation();
			User user = sessCredentials.getCurrentUser();
			
			log.setCreateBy(user.getId());
			log.setLastUpdateBy(user.getId());
					
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
						
			object.setLogInformation(log);
			pm.save(object);
			return SUCCESS;
		}
	}
	
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessCredentials = sessionCredentials;

	}

}
