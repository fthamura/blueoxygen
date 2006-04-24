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
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author frans
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class ViewJobDesc extends ActionSupport implements PersistenceAware {

	protected PersistenceManager pm;
	protected JobDesc jobDesc;
	private String id;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	
	public JobDesc getJobDesc() {
		return jobDesc;
	}
	public void setJobDesc(JobDesc jobDesc) {
		this.jobDesc = jobDesc;
	}
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;

	}

	public String execute() {

		jobDesc = (JobDesc) pm.getById(JobDesc.class, getId());
		if (jobDesc == null) {
			addActionError("Cannot find such Job Description");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}

}