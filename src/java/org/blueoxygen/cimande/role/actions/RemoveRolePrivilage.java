/*
 * Created on Aug 12, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.role.actions;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RolePrivilage;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author alex
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class RemoveRolePrivilage extends ActionSupport implements PersistenceAware{
	private PersistenceManager pm;
	private RolePrivilage rf;
	private Role role;
	private String rolePrivilageId = "";
	private String id = "";
	
	public String execute() {
		if(!getRolePrivilageId().equalsIgnoreCase("")&&!getId().equalsIgnoreCase("")){
			rf = (RolePrivilage) pm.getById(RolePrivilage.class, getRolePrivilageId().substring(0,28));
			role = (Role) pm.getById(Role.class, getId());
			role.getRolePrivilage().remove(rf);
			pm.remove(rf);
			return SUCCESS;
		}
		
		return ERROR;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
	/**
	 * @return Returns the rf.
	 */
	public RolePrivilage getRf() {
		return rf;
	}
	/**
	 * @param rf The rf to set.
	 */
	public void setRf(RolePrivilage rf) {
		this.rf = rf;
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
	 * @return Returns the rolePrivilageId.
	 */
	public String getRolePrivilageId() {
		return rolePrivilageId;
	}
	/**
	 * @param rolePrivilageId The rolePrivilageId to set.
	 */
	public void setRolePrivilageId(String rolePrivilageId) {
		this.rolePrivilageId = rolePrivilageId;
	}
	/**
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}
	/**
	 * @param id The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}
}
