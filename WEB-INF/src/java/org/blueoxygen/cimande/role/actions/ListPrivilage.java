/*
 * Created on Aug 5, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.role.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author maria
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class ListPrivilage extends ActionSupport implements PersistenceAware{
	private List roles = new ArrayList();
	protected Role role;
	protected PersistenceManager pm;
	
	public String execute(){
		roles = pm.findAllSorted(Role.class, "name");
		return SUCCESS;
	}

	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
			this.pm = persistenceManager;
		
	}
	
	/**
	 * @return Returns the role.
	 */
	public Role getRole() {
		return role;
	}
	/**
	 * @param role The role to set.
	 */
	public void setRole(Role role) {
		this.role = role;
	}
	/**
	 * @return Returns the roles.
	 */
	public List getRoles() {
		return roles;
	}
	/**
	 * @param roles The roles to set.
	 */
	public void setRoles(List roles) {
		this.roles = roles;
	}
}
