/**
 * 
 */
package org.blueoxygen.cimande.security.usermanager.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.cimande.site.Site;

/**
 * @author Abdul Rizal Adompo
 *
 */
public class AddUserSite extends UserSiteForm implements SessionCredentialsAware { 
	private SessionCredentials sessionCredentials;

	public String execute() {


		if(getSite().getId() != null && !"".equalsIgnoreCase(getSite().getId())){
			setSite((Site)manager.getById(Site.class, getSite().getId()));

			if(getUser().getId() != null && !"".equalsIgnoreCase(getUser().getId())){

				setUser((User)manager.getById(User.class, getUser().getId()));
			}
			getUserSite().setUser(getUser());
			getUserSite().setSite(getSite());
			LogInformation logInfo = new LogInformation();
			logInfo.setCreateBy(sessionCredentials.getCurrentUser().getId());
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
			logInfo.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
			logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
			logInfo.setActiveFlag(1);
			getUserSite().setLogInformation(logInfo);
			manager.save(getUserSite());
		}
		return SUCCESS;	
	}
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}
}
