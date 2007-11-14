package org.blueoxygen.cimande.security.mvc.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.cimande.security.mvc.UserSite;
import org.blueoxygen.cimande.site.Site;

import com.opensymphony.xwork2.ActionSupport;

public class UserSiteForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	private User user = new User();
	private Site site = new Site();
	private UserSite userSite = new UserSite();
	private List<UserSite> userSites = new ArrayList<UserSite>();
	
	public String execute(){
		if(getUser().getId() != null && !"".equalsIgnoreCase(getUser().getId())){
			setUser((User) manager.getById(User.class, getUser().getId()));
			setUserSites(manager.getList("FROM " + UserSite.class.getName() + 
					" ur WHERE ur.user.id='" + getUser().getId() + "'", null, null));
			System.out.println(getUserSites().size());
		}
		return SUCCESS;
	}
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		manager = persistenceManager;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Site getSite() {
		return site;
	}

	public void setSite(Site site) {
		this.site = site;
	}

	public UserSite getUserSite() {
		return userSite;
	}

	public void setUserSite(UserSite userSite) {
		this.userSite = userSite;
	}
	public List<UserSite> getUserSites() {
		return userSites;
	}
	public void setUserSites(List<UserSite> userSites) {
		this.userSites = userSites;
	}
}
