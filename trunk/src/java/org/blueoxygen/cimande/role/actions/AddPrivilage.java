/*
 * Created on Aug 10, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.role.actions;

import java.sql.Timestamp;
import java.util.Iterator;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RolePrivilage;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author alex
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class AddPrivilage extends ActionSupport implements PersistenceAware,SessionCredentialsAware{
	private PersistenceManager pm;
	private SessionCredentials sess;
	private String moduleFunctionId = "";
	private String id = "";
	private Role role = new Role();
	private ModuleFunction mf = new ModuleFunction();
	private RolePrivilage rolePrivilage;
	private LogInformation logInfo;
	public String execute(){
		role = (Role) pm.getById(Role.class,getId());
		mf = (ModuleFunction) pm.getById(ModuleFunction.class,getModuleFunctionId());
		Iterator it = role.getRolePrivilage().iterator();
		
		
		if(!getModuleFunctionId().equalsIgnoreCase("") && roleContain(role)){
			
			rolePrivilage = new RolePrivilage(); 
			rolePrivilage.setModuleFunction(mf);
			rolePrivilage.setRole(role);
			rolePrivilage.setPrivilage_flag(1);
			
			logInfo = new LogInformation();
			logInfo.setActiveFlag(1);
			logInfo.setCreateBy(sess.getCurrentUser().getId());
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
			logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
			logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
			
			rolePrivilage.setLogInformation(logInfo);
			pm.save(rolePrivilage);
			role.getRolePrivilage().add(rolePrivilage);
		}
		return SUCCESS;
	}
	
	public boolean roleContain(Role rl){
		Iterator it = rl.getRolePrivilage().iterator();
		while(it.hasNext()){
			RolePrivilage rp = (RolePrivilage) it.next();
			if(rp.getModuleFunction().getId().equalsIgnoreCase(getModuleFunctionId()))  return false;
		}
		return true;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
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

	
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
	}
	
}
