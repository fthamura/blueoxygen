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

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author Umar Khatab umar@intercitra.com
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class ViewRole extends ActionSupport implements PersistenceAware {

	protected PersistenceManager pm;
	protected Role role;
	
	private String id;

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;

	}

	public String execute() {
		role = (Role) pm.getById(Role.class, id);

		if (role == null) {
			addActionError("Such role couldn't be found");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}

	public void setId(String id) {
		this.id = id;
	}
	public Role getRole() {
		return role;
	}
}