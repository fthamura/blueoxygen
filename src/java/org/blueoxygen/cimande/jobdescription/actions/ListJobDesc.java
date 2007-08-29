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

import java.util.List;

import org.blueoxygen.cimande.jobdescription.JobDesc;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Umar Khatab umar@intercitra.com
 *
 */
public class ListJobDesc extends ActionSupport implements PersistenceAware {

	private List jobDescs;
	private PersistenceManager pm;
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;

	}
	
	public String execute() {
		jobDescs = pm.findAllSorted(JobDesc.class, "name");
		return SUCCESS;
	
	}

	public List getJobDescs() {
		return jobDescs;
	}

	public void setJobDescs(List jobDescs) {
		this.jobDescs = jobDescs;
	}

	
}
