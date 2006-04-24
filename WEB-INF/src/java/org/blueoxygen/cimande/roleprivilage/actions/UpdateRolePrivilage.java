/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.roleprivilage.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RolePrivilage;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

/**
 * @author mee_andto@yahoo.com
 *
 */
public class UpdateRolePrivilage extends RolePrivilageForm implements SessionCredentialsAware {
	
	private SessionCredentials sess;
	private String id;
	private RolePrivilage privilage;
	public String execute(){
		
		
		if (getRole_id().equalsIgnoreCase(""))
			addActionError("Role ID can't be empty.");

		if (hasErrors()) {
			return INPUT;
		} else {
			privilage = (RolePrivilage) persistenceManager.getById(RolePrivilage.class, getId());

			role= (Role) persistenceManager.getById(Role.class, getRole_id());
			moduleFunction= (ModuleFunction) persistenceManager.getById(ModuleFunction.class, getModule_function_id());
			
			privilage.setPrivilage_flag(getPrivilage_flag());
			privilage.setUrl_xml(getUrl_xml());
			privilage.setRole(role);
			privilage.setModuleFunction(moduleFunction);
			
			logInfo = privilage.getLogInformation();
			logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
			logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));	
			privilage.setLogInformation(logInfo);
			
			persistenceManager.save(privilage);
			
			return SUCCESS;
		}
	}
	
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
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
