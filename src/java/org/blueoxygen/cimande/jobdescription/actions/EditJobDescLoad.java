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

import org.blueoxygen.cimande.jobdescription.JobDesc;


/**
 * @author dwimiyanto
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class EditJobDescLoad extends JobDescForm {

	public String execute() {
		JobDesc jobDesc = (JobDesc) pm.getById(JobDesc.class, getId());

		if (jobDesc == null) {
			addActionError("Cannot find such jobDesciption");
			return ERROR;
		} else {

			setName(jobDesc.getName());
			setDescription(jobDesc.getDescription());

			return SUCCESS;
		}

	}

}