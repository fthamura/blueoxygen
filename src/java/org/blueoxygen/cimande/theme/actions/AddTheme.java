package org.blueoxygen.cimande.theme.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.theme.Theme;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class AddTheme extends ThemeForm implements SessionCredentialsAware{
	private SessionCredentials sess;
	public String execute(){
		Theme themes = new Theme();
		
		if(getName().equalsIgnoreCase("")){
			addActionError("Sorry, Name can't be empty.");
			return INPUT;
		}
		if(getTheme_folder().equalsIgnoreCase("")){
			addActionError("Sorry, Theme Folder can't be empty.");
			return INPUT;
		}
		
		if (hasErrors()) {
			return INPUT;
		}
		else {
	
			themes.setName(getName());
			themes.setDescription(getDescription());
			themes.setTheme_folder(getTheme_folder());
		
			LogInformation logInfo = new LogInformation();
			
			if (sess.getCurrentUser()!= null){
				logInfo.setCreateBy(sess.getCurrentUser().getId());
				logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
				}
		
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
			logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
			logInfo.setActiveFlag(getActiveFlag());
		
			if (getActiveFlag() == -1) {
				logInfo.setActiveFlag(LogInformation.INACTIVE);
			} else {
				logInfo.setActiveFlag(getActiveFlag());
			}
			
			themes.setLogInformation(logInfo);
			pm.save(themes);
			return SUCCESS;
		}
					
	}
		
	
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess  = sessionCredentials;
	}	
		
}
