/**
 * 
 */
package org.blueoxygen.cimande.security.usermanager.actions;

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
			
			//setSite((Site)manager.getById(Site.class,getSite().getId()));
			if(getSite().getId() != null && !"".equalsIgnoreCase(getSite().getId())){
				setSite((Site)manager.getById(Site.class, getSite().getId()));
			}
			if(getUser().getId() != null && !"".equalsIgnoreCase(getUser().getId())){
				setUser((User)manager.getById(User.class, getUser().getId()));
			}
			getUserSite().setUser(getUser());
			getUserSite().setSite(getSite());
			manager.save(getUserSite());
			return SUCCESS;	
		}
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}
}
	