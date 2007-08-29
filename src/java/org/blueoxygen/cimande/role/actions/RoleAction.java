/*
 * Created on Aug 19, 2004
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.role.actions;

import java.sql.Timestamp;
import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RolePrivilage;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;



/**
 * @author Agustono Heriadi at dark_ilussion@yahoo.com
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class RoleAction extends RoleForm implements SessionCredentialsAware
{
	private List roles;
	private Role role;
	private RolePrivilage rp;
	private SessionCredentials sessionCredentials;
	private String moduleFunctionId="";
	//protected ModuleFunction moduleFunction = new ModuleFunction();
	
	public String doInsert()
	{
		if (hasErrors())
			return ERROR;
		moduleFunction = (ModuleFunction) getPersistenceManager().getById(ModuleFunction.class,getModuleFunctionId());
		Role role = new Role();
		
		role.setName(getName());
		role.setDescription(getDescription());
		//role.setModuleFunction(moduleFunction);
		
		LogInformation log = new LogInformation();
		log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		log.setCreateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		log.setActiveFlag(LogInformation.ACTIVE);
		
		role.setLogInformation(log);

		getPersistenceManager().save(role);
		
		return SUCCESS;
	}
	
	public String doEdit(){
		if (hasErrors())
			return ERROR;
		
		role = (Role) getPersistenceManager().getById(Role.class, getId());
		setName(role.getName());
		setDescription(role.getDescription());
		
		return SUCCESS;
	}
	
	public String doUpdate(){
		if (hasErrors())
			return ERROR;
		Role role = (Role) getPersistenceManager().getById(Role.class, getId());
		role.setName(getName());
		role.setDescription(getDescription());
		
		LogInformation log = role.getLogInformation();
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		log.setActiveFlag(getActiveFlag());
		
		role.setLogInformation(log);	
		getPersistenceManager().save(role);
		return SUCCESS;
	}
	
	public String doDelete(){
		if (hasErrors())
			return ERROR;
		Role role = (Role) getPersistenceManager().getById(Role.class, getId());
		getPersistenceManager().remove(role);
		return SUCCESS;
	}
	
	public String doView()
	{
		if (hasErrors())
			return ERROR;
		role = (Role) getPersistenceManager().getById(Role.class, getId());		
		return SUCCESS;
	}
	
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List getRoles() {
		return roles;
	}

	public void setRoles(List workflows) {
		this.roles = workflows;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials=sessionCredentials;
		
	}
	
	
	
	/**
	 * @return Returns the moduleFunctionId.
	 */
	public String getModuleFunctionId() {
		return moduleFunctionId;
	}
	/**
	 * @param moduleFunctionId The moduleFunctionId to set.
	 */
	public void setModuleFunctionId(String moduleFunctionId) {
		this.moduleFunctionId = moduleFunctionId;
	}
	/**
	 * @return Returns the rp.
	 */
	public RolePrivilage getRp() {
		return rp;
	}
	/**
	 * @param rp The rp to set.
	 */
	public void setRp(RolePrivilage rp) {
		this.rp = rp;
	}
}
