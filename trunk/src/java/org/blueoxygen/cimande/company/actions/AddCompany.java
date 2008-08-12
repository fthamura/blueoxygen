/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.company.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.company.Company;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;

/**
 * @author Gurki
 */
@Validation
public class AddCompany extends CompanyForm implements SessionCredentialsAware {

	private SessionCredentials sessCredentials;

	@Validations(requiredStrings = { @RequiredStringValidator(fieldName = "name", message = "Nmae can't be empty") })
	public String execute() {

		Company comp = new Company();

//		if (getName().equalsIgnoreCase("")) {
//			addActionError("Name can't be empty");
//		}

		if (hasErrors()) {
			return INPUT;

		} else {

			comp.setName(getName());
			comp.setAddress(getAddress());
			comp.setState(getState());
			comp.setZip_number(getZip_number());

			comp.setTelephone(getTelephone());
			comp.setFaximile(getFaximile());
			comp.setWebsite(getWebsite());
			comp.setEmail(getEmail());

			LogInformation log = new LogInformation();

			/*
			 * must be fixed!!!
			 * 
			 */

			if (sessCredentials.getCurrentUser() != null) {
				log.setCreateBy(sessCredentials.getCurrentUser().getId());
				log.setLastUpdateBy(sessCredentials.getCurrentUser().getId());
			}

			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));

			comp.setLogInformation(log);

			pm.save(comp);
			return SUCCESS;
		}

	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessCredentials = sessionCredentials;

	}

}