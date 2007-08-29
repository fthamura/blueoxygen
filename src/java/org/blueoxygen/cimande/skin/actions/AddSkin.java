/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.skin.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.theme.Theme;
import org.blueoxygen.cimande.skin.Skin;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;

/**
 * @author amix
 *
 */
public class AddSkin extends SkinForm implements SessionCredentialsAware{
	private SessionCredentials sessCredentials;
	
	public String execute(){
		
		Skin skin = new Skin();
		
		if(getName().equalsIgnoreCase("")){
			addActionError("Name can't be empty");
		}
		if(getDescription().equalsIgnoreCase("")){
			addActionError("Description can't be empty");
		}
		if(getTheme_id().equalsIgnoreCase("")){
			addActionError("Theme ID can't be empty");
		}

		if (hasErrors()) {
			return INPUT;
	
		} else {
			
			theme = (Theme) pm.getById(Theme.class, getTheme_id());
			
			skin.setName(getName());
			skin.setDescription(getDescription());
			skin.setUrl_theme(getUrl_theme());
			skin.setTheme(theme);
			
			LogInformation log = new LogInformation();
			User user = sessCredentials.getCurrentUser();
			
			log.setCreateBy(user.getId());
			log.setLastUpdateBy(user.getId());
					
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
			log.setActiveFlag(getActiveFlag());
			
			if (getActiveFlag() == -1) {
				log.setActiveFlag(LogInformation.INACTIVE);
			} else {
				log.setActiveFlag(getActiveFlag());
			}
	
			
			skin.setLogInformation(log);
			pm.save(skin);
			return SUCCESS;
		}
	}
	
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessCredentials = sessionCredentials;

	}
}
