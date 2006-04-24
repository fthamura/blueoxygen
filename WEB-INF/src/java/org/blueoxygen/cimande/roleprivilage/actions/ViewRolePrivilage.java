/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.roleprivilage.actions;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.RolePrivilage;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author Umar Khatab umar@intercitra.com
 * modified by
 * @author mee_andto@yahoo.com
 */
public class ViewRolePrivilage extends ActionSupport implements PersistenceAware {

	protected PersistenceManager pm;
	protected RolePrivilage privilage;
	private String id = "";

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;

	}

	public String execute() {
		if (!id.equalsIgnoreCase(""))
		{
			privilage = (RolePrivilage) pm.getById(RolePrivilage.class, getId());
			return SUCCESS;
		}
		else
		{
			addActionError("Role Privilage not found");
			return ERROR;
		}
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public RolePrivilage getPrivilage() {
		return privilage;
	}

	public void setPrivilage(RolePrivilage privilage) {
		this.privilage = privilage;
	}

	
}