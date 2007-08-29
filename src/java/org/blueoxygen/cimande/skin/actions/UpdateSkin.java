/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.skin.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.skin.Skin;
import org.blueoxygen.cimande.theme.Theme;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

/**
 * @author amix {amix_adib@yahoo.com}
 *
 */
public class UpdateSkin extends SkinForm implements SessionCredentialsAware {
	private SessionCredentials sess;
	private String id;
	
	public String execute(){
		
		skin = (Skin) pm.getById(Skin.class, getId());
		
		if (getName().equalsIgnoreCase(""))
			addActionError("Name can't be empty.");
		if (getDescription().equalsIgnoreCase(""))
			addActionError("Description can't be empty.");
		if (getTheme_id().equalsIgnoreCase(""))
			addActionError("Theme ID can't be empty.");

		if (hasErrors()) {
			return INPUT;
		} else {
			
			theme = (Theme) pm.getById(Theme.class, getTheme_id());
			
			skin.setName(getName());
			skin.setDescription(getDescription());
			skin.setUrl_theme(getUrl_theme());
			skin.setTheme(theme);
			
			logInfo = skin.getLogInformation();
			logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
			logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));			
			logInfo.setActiveFlag(getActiveFlag());
			skin.setLogInformation(logInfo);
			
			pm.save(skin);
			
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
