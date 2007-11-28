package org.blueoxygen.cimande.rolesite;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.site.Site;

import com.opensymphony.xwork2.ActionSupport;

public class RoleSiteForm extends ActionSupport implements PersistenceAware, SessionCredentialsAware {
	protected PersistenceManager manager;
	protected SessionCredentials sessionCredentials;
	private List<Role> roles = new ArrayList<Role>();
	private List<RoleSite> rolesites = new ArrayList<RoleSite>();
	private RoleSite rolesite = new RoleSite();
	private Site site = new Site();
	private Role role = new Role();
	
	public String execute(){
		if(getRole().getId() != null && !"".equalsIgnoreCase(getRole().getId())){
			setRole((Role) manager.getById(Role.class, getRole().getId()));
			setRolesites(manager.getList("FROM " + RoleSite.class.getName() + " rs " +
					"WHERE rs.role.id='" + getRole().getId() + "'", null, null));
		}
		if(getRolesite().getId() != null && !"".equalsIgnoreCase(getRolesite().getId())){
			setRolesite((RoleSite) manager.getById(RoleSite.class, getRolesite().getId()));
		}
		setRoles(manager.findAllSorted(Role.class, "name"));
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public Site getSite() {
		return site;
	}

	public void setSite(Site site) {
		this.site = site;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List<RoleSite> getRolesites() {
		return rolesites;
	}

	public void setRolesites(List<RoleSite> rolesites) {
		this.rolesites = rolesites;
	}

	public RoleSite getRolesite() {
		return rolesite;
	}

	public void setRolesite(RoleSite rolesite) {
		this.rolesite = rolesite;
	}

}
