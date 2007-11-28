package org.blueoxygen.cimande.security.rsp.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.cimande.role.RoleSitePrivilage;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

import com.opensymphony.xwork2.ActionSupport;


/**
 * @author Abdul Rizal Adompo
 *
 */

public class Master extends ActionSupport implements PersistenceAware, SessionCredentialsAware {
	protected PersistenceManager manager;
	protected SessionCredentials sessionCredentials;
	private Role role = new Role();
	private RoleSite roleSite = new RoleSite();
	private ModuleFunction mfunction = new ModuleFunction();
	private RoleSitePrivilage rsp = new RoleSitePrivilage();
	private List<RoleSitePrivilage> rsps = new ArrayList<RoleSitePrivilage>();
	private List<RoleSite> roleSites = new ArrayList<RoleSite>();
	private List<Role> roles = new ArrayList<Role>();
	
	public RoleSitePrivilage getRsp() {
		return rsp;
	}

	public void setRsp(RoleSitePrivilage rsp) {
		this.rsp = rsp;
	}

	public String execute(){
		if(getRole().getId() != null && !"".equalsIgnoreCase(getRole().getId())){
			setRole((Role) manager.getById(Role.class,getRole().getId()));
			setRoleSites(manager.getList("FROM " + RoleSite.class.getName() + " rs " +
					"WHERE rs.role.id='" + getRole().getId()+ "' " +
					"AND rs.logInformation.activeFlag=1", null, null));
		}
		if(getRoleSite().getId() != null && !"".equalsIgnoreCase(getRoleSite().getId())){
			setRoleSite((RoleSite) manager.getById(RoleSite.class, getRoleSite().getId()));
			setRsps(manager.getList("FROM " + RoleSitePrivilage.class.getName() + " rsp " +
					"WHERE rsp.roleSite.id='" + getRoleSite().getId() + "' " +
					"AND rsp.logInformation.activeFlag=1", null, null));
		}
		setRoles(manager.findAllSorted(Role.class, "name"));
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public RoleSite getRoleSite() {
		return roleSite;
	}

	public void setRoleSite(RoleSite SiteroleSite) {
		this.roleSite = SiteroleSite;
	}

	public List<RoleSite> getRoleSites() {
		return roleSites;
	}

	public void setRoleSites(List<RoleSite> roleSites) {
		this.roleSites = roleSites;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public List<RoleSitePrivilage> getRsps() {
		return rsps;
	}

	public void setRsps(List<RoleSitePrivilage> rsps) {
		this.rsps = rsps;
	}

	public ModuleFunction getMfunction() {
		return mfunction;
	}

	public void setMfunction(ModuleFunction mfunction) {
		this.mfunction = mfunction;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

}

	