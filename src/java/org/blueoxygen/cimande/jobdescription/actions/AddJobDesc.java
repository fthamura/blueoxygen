/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.jobdescription.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.jobdescription.JobDesc;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

/**
 * @author Umar Khatab umar@intercitra.com
 */

public class AddJobDesc extends JobDescForm implements SessionCredentialsAware {

	private SessionCredentials sessCredentials;

	public String execute() {

		JobDesc jobDesc = new JobDesc();

		if (getName().equalsIgnoreCase("")) {
			addActionError("Name can't be empty");
		}
		if (getDescription().equalsIgnoreCase("")) {
			addActionError("Description can't be empty");
		}

		if (hasErrors()) {
				return INPUT;
		
		} else {
			
				jobDesc.setName(getName());
				jobDesc.setDescription(getDescription());
				
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
			
				
				jobDesc.setLogInformation(log);

				pm.save(jobDesc);
				return SUCCESS;
		}

	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessCredentials = sessionCredentials;

	}

}