/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.descriptors.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;

/**
 * @author Umar Khatab umar@intercitra.com
 */
@Validation
public class AddDescriptor extends DescriptorForm implements SessionCredentialsAware {

	private SessionCredentials sessCredentials;
	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "name", message = "Please input name"),
			@RequiredStringValidator(fieldName = "description", message = "Please input description") })
			
	public String execute() {

		Descriptor descr = new Descriptor();

/*		if (getName().equalsIgnoreCase("")) {
			addActionError("Name can't be empty");
		}
		if (getDescription().equalsIgnoreCase("")) {
			addActionError("Description can't be empty");
		}*/

		if (hasErrors()) {
			return INPUT;

		} else {
			GxWindow window;
			if(!getWindowId().equalsIgnoreCase("")){
				window = (GxWindow) pm.getById(GxWindow.class, getWindowId());
				descr.setWindow(window);
			}
			descr.setName(getName());
			descr.setDescription(getDescription());
			descr.setUrlAction(getUrlAction());
			descr.setUrlDescriptor(getUrlDescriptor());
			
			descr.setDescriptorFlag(getDescriptorFlag());
			descr.setTypeFlag(getTypeFlag());

			LogInformation log = new LogInformation();

			/* must be fixed!!!
			 * 
			 */

			if (sessCredentials.getCurrentUser()!= null){
				log.setCreateBy(sessCredentials.getCurrentUser().getId());
				log.setLastUpdateBy(sessCredentials.getCurrentUser().getId());
			}

			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
			log.setActiveFlag(getActiveFlag());

			if (getActiveFlag() == -1) {
				log.setActiveFlag(LogInformation.INACTIVE);
			} else {
				log.setActiveFlag(getActiveFlag());
			}


			descr.setLogInformation(log);

			pm.save(descr);
			return SUCCESS;
		}

	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessCredentials = sessionCredentials;

	}

}