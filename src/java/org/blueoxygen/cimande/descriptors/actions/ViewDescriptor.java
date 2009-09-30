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

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.descriptors.DescriptorModule;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author frans
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class ViewDescriptor extends ActionSupport implements PersistenceAware {
	private List<DescriptorModule> descriptorModules = new ArrayList<DescriptorModule>();
	protected PersistenceManager pm;
	protected Descriptor descriptor;
	private String id;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Descriptor getDescriptor() {
		return descriptor;
	}
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;

	}

	public List<DescriptorModule> getDescriptorModules() {
		return descriptorModules;
	}
	public void setDescriptorModules(List<DescriptorModule> descriptorModules) {
		this.descriptorModules = descriptorModules;
	}
	public String execute() {

		descriptor = (Descriptor) pm.getById(Descriptor.class, getId());
		if (descriptor == null) {
			addActionError("Cannot find such descriptor");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}

}