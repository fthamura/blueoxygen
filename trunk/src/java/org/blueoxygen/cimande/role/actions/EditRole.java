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
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
@Validation
public class EditRole extends RoleForm implements SessionCredentialsAware {

	private SessionCredentials sessionCredentials;

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "name", message = "Name can't be empty."),
			@RequiredStringValidator(fieldName = "description", message = "Description can't be empty.") })
	public String execute() {

		Role role = (Role) pm.getById(Role.class, getId());
		if (role == null) {
			addActionError("Such role couldn't be found. Edit process failed.");
			return ERROR;
		}

		else {
			if (getName().equalsIgnoreCase(""))
				addActionError("Name can't be empty.");
			if (getDescription().equalsIgnoreCase(""))
				addActionError("Description can't be empty.");

			if (hasErrors()) {
				return INPUT;
			} else {

				role.setName(getName());
				role.setDescription(getDescription());

				LogInformation log = role.getLogInformation();
				log.setActiveFlag(getActiveFlag());
				
				if (sessionCredentials.getCurrentUser()!= null) {
				log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());}
				log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
				role.setLogInformation(log);
				if (!getParentId().equalsIgnoreCase("0")) {
					Role parent = (Role) pm.getById(Role.class,
							getParentId());
					//role.setParentRole(parent);
				}
				pm.save(role);
				return SUCCESS;
			}
		}
	}
}