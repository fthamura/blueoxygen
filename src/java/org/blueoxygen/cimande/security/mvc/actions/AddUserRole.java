/**
 * 
 */
package org.blueoxygen.cimande.security.mvc.actions;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.UserRole;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;

/**
 * @author Abdul Rizal Adompo
 *
 */
public class AddUserRole extends UserForm implements SessionCredentialsAware, PersistenceAware { 
	private Role role = new Role();
	private SessionCredentials sessionCredentials;
	protected PersistenceManager manager;
	public String execute() {
		UserRole ur = new UserRole();
		setRole((Role)manager.getById(Role.class,getRole().getId()));
		if(getUser().getId() != null && !"".equalsIgnoreCase(getUser().getId())){
			setUser((User)manager.getById(User.class, getUser().getId()));
			
			if(getUser().getRole() == null){
				getUser().setRole(role);
				manager.save(getUser());
				ur.setDefaultRole(true);
			}
		}
		ur.setUser(getUser());
		ur.setRole(role);
		manager.save(ur);
		return SUCCESS;	
	}
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
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
}