package org.blueoxygen.cimande.security.usermanager.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.UserRole;
import org.blueoxygen.cimande.security.User;

import com.opensymphony.xwork2.ActionSupport;

public class UserRoleForm extends ActionSupport implements PersistenceAware {
	private PersistenceManager manager;
	private User user = new User();
	private Role role = new Role();
	private UserRole userRole = new UserRole();
	private List<UserRole> userRoles = new ArrayList<UserRole>();
	
	public String execute(){
		if(getUser().getId() != null && !"".equalsIgnoreCase(getUser().getId())){
			setUser((User) manager.getById(User.class, getUser().getId()));
			setUserRoles(manager.getList("FROM " + UserRole.class.getName() + 
					" ur WHERE ur.user.id='" + getUser().getId() + "'", null, null));
		}
		
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public UserRole getUserRole() {
		return userRole;
	}

	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}

	public List<UserRole> getUserRoles() {
		return userRoles;
	}

	public void setUserRoles(List<UserRole> userRoles) {
		this.userRoles = userRoles;
	}

	public PersistenceManager getManager() {
		return manager;
	}
	
}
