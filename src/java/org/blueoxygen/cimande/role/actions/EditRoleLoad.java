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

import org.blueoxygen.cimande.role.Role;

/**
 * @author frans
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class EditRoleLoad extends RoleForm {

	public String execute() {

		Role role = (Role) pm.getById(Role.class, getId());

		if (role == null) {
			addActionError("Such Role couldn't be found");
			return ERROR;
		} else {

			setName(role.getName());
			setDescription(role.getDescription());
			setActiveFlag(role.getLogInformation().getActiveFlag());
			/*if (role.hasParentRole()) {
				setParentId(role.getParentRole().getId());
			} else {
				setParentId("0");
			}*/

			return SUCCESS;

		}

	}

}