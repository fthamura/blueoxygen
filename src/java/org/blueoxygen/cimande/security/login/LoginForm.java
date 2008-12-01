package org.blueoxygen.cimande.security.login;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.security.LoginFilter;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.cimande.security.UserAccessor;
import org.blueoxygen.cimande.security.UserAccessorAware;
import org.blueoxygen.cimande.security.usermanager.UserSite;
import org.blueoxygen.cimande.site.Site;
import org.blueoxygen.util.StringUtils;

import com.opensymphony.xwork2.ActionContext;

public class LoginForm extends CimandeAction implements UserAccessorAware {
	protected UserAccessor ua;
	protected StringUtils su = new StringUtils();
	private String username = "";
	private String password = "";
	private User user = new User();
	private Site site = new Site();
	private Role role = new Role();
	private List<UserSite> userSites = new ArrayList<UserSite>();
	private List<User> users = new ArrayList<User>();
	private String redirectUri;

	public String execute() {
		if (ActionContext.getContext().getSession().get(
				LoginFilter.LOGIN_CIMANDE_USER) != null) { // sudah login
			if (ActionContext.getContext().getSession().get(
					LoginFilter.LOGIN_CIMANDE_SITE) != null) { // sudah pilih
				// site
				String id = su.decodeBase64(ActionContext.getContext().getSession().get(LoginFilter.LOGIN_CIMANDE_USER).toString());
				setUser(ua.getById(id));
				if(getUser().getWorkspace_type() == null || getUser().getWorkspace_type().equalsIgnoreCase("")){
					setRole((Role) manager.getById(Role.class, getUser().getRole().getId()));
					if(getRole().getWorkspace_type() == null || getRole().getWorkspace_type().equalsIgnoreCase("")){
						String site = ActionContext.getContext().getSession().get(LoginFilter.LOGIN_CIMANDE_SITE).toString();
						setSite((Site) manager.getById(Site.class, site));
						if(getSite().getWorkspace_type().equalsIgnoreCase("tree")){
							return "continue";
						}else if(getSite().getWorkspace_type().equalsIgnoreCase("menu")){
							return "menu";
						}else {
							return "flat";
						}
						
					}
					else if(getRole().getWorkspace_type().equalsIgnoreCase("menu")){
						return "menu";
					}else if(getRole().getWorkspace_type().equalsIgnoreCase("flat")){
						return "flat";
					}else {
						return "continue";
					}
				}
				else if (getUser().getWorkspace_type().equalsIgnoreCase("tree")){
					return "continue";
				} else if(getUser().getWorkspace_type().equalsIgnoreCase("menu")){
					return "menu";
				} else {
					return "flat";
				}
 			} else { // belum pilih site
				getUser().setId(su.decodeBase64(ActionContext.getContext().getSession().get(LoginFilter.LOGIN_CIMANDE_USER).toString()));
				setUser(ua.getById(getUser().getId()));
				setUserSites(manager.getList("FROM " + UserSite.class.getName()
						+ " us WHERE us.user.id='" + getUser().getId() + "'",
						null, null));
				if (getUserSites().size() == 1) { // cuma satu site
					setSite(getUserSites().get(0).getSite());
					ActionContext.getContext().getSession().put(
							LoginFilter.LOGIN_CIMANDE_SITE, getSite().getId());
					if (getRedirectUri() != null || !"".equalsIgnoreCase(getRedirectUri())) {
						LOG.info("redirectUri : " + getRedirectUri());
						return "redirect";
					} else {
						return "continue";
					}
				} else if(getUserSites().size() <= 0) {
					return "continue";
				} else { // lebih dari satu site
					return "site";
				}
			}
		} else { // belum login
			return "login";
		}
	}

	public void setUserAccessor(UserAccessor ua) {
		this.ua = ua;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public StringUtils getSu() {
		return su;
	}

	public void setSu(StringUtils su) {
		this.su = su;
	}

	public String getRedirectUri() {
		return redirectUri;
	}

	public void setRedirectUri(String redirectUri) {
		this.redirectUri = redirectUri;
	}

	public List<UserSite> getUserSites() {
		return userSites;
	}

	public void setUserSites(List<UserSite> userSites) {
		this.userSites = userSites;
	}

	public Site getSite() {
		return site;
	}

	public void setSite(Site site) {
		this.site = site;
	}
	
	public boolean getAllowRegister(){
		return Boolean.getBoolean(get("application.registration.public"));
	}

	/**
	 * @return the users
	 */
	public List<User> getUsers() {
		return users;
	}

	/**
	 * @param users the users to set
	 */
	public void setUsers(List<User> users) {
		this.users = users;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	
}
