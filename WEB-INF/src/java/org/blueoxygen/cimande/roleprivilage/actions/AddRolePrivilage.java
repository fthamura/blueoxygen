/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.roleprivilage.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RolePrivilage;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;


/**
 * @author frans
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class AddRolePrivilage extends RolePrivilageForm implements SessionCredentialsAware {

	private SessionCredentials sessionCredentials;


	public String execute() {
		
		if (getRole_id().equalsIgnoreCase("")) {
			addActionError("Role ID can't be empty.");
		}
		if (hasErrors()) {return INPUT;} else {

		role = (Role) persistenceManager.getById(Role.class, getRole_id());
		moduleFunction= (ModuleFunction) persistenceManager.getById(ModuleFunction.class, getModule_function_id());
			
		RolePrivilage privilage = new RolePrivilage();

		privilage.setUrl_xml(getUrl_xml());
		privilage.setPrivilage_flag(getPrivilage_flag());
		privilage.setRole(role);
		privilage.setModuleFunction(moduleFunction);

		LogInformation log = new LogInformation();

		if (sessionCredentials.getCurrentUser()!=null) {
		log.setCreateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		}
		
		log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));

		if (getActiveFlag() == -1) {
			//set activeFlag to inactive when not specified
			log.setActiveFlag(LogInformation.INACTIVE);
		} else {
			log.setActiveFlag(getActiveFlag());
		}

		privilage.setLogInformation(log);
		persistenceManager.save(privilage);

		return SUCCESS;}

	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;

	}

}