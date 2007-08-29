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

import java.util.List;

import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Umar Khatab umar@intercitra.com
 *
 */
public class ListDescriptor extends ActionSupport implements PersistenceAware {

	private List descriptors;
	private PersistenceManager pm;
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;

	}
	
	public String execute() {
		descriptors = pm.findAllSorted(Descriptor.class, "name");
		return SUCCESS;
	
	}

	public List getDescriptors() {
		return descriptors;
	}
}
