/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/


package org.blueoxygen.cimande.role.actions;

import java.sql.Timestamp;
import org.blueoxygen.util.StringUtils;

import org.blueoxygen.cimande.LogInformation;

import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;

/**
 * @author frans
 * 
 */
@Validation
public class AddRole extends RoleForm implements SessionCredentialsAware {

	private SessionCredentials sessionCredentials;

	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "name", message = "Name can't be empty."),
			@RequiredStringValidator(fieldName = "description", message = "Description can't be empty.") })
	public String execute() {
		Role role = new Role();

//		if (getName().equalsIgnoreCase(""))
//			addActionError("Name can't be empty.");
//		if (getDescription().equalsIgnoreCase(""))
//			addActionError("Description can't be empty.");
		
		// User currentUser = (User) persistenceManager.getById(User.class, "1");
		// if (currentUser == null) addActionError("Current User is null");
		
		if (hasErrors()) {
			return INPUT;
		 } else {
		 		
			role.setName(getName());
			role.setDescription(getDescription());
			if(getWorkspace_type().equalsIgnoreCase("")){
				role.setWorkspace_type(get("workspace.type.default.role"));
			}
			else{
				role.setWorkspace_type(getWorkspace_type());
			}
			

			// logging information
			LogInformation log = new LogInformation();
			
			if (sessionCredentials.getCurrentUser() != null ) {
				log.setCreateBy(sessionCredentials.getCurrentUser().getId());
				log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
				
			}
			
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
			log.setActiveFlag(getActiveFlag());
					
			if (getActiveFlag() == -1) {
				log.setActiveFlag(LogInformation.INACTIVE);
			} else {
				log.setActiveFlag(getActiveFlag());
			}

			role.setLogInformation(log);
			pm.save(role);
			return SUCCESS;
		} 
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
		
	}


}