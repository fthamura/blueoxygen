/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.security.rsp.actions;

import org.blueoxygen.cimande.role.RoleSitePrivilage;


/**
 * @author Rizal
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class Delete extends Master {

	public String execute() {
		if(getRsp().getId() != null && !"".equalsIgnoreCase(getRsp().getId())){
			setRsp((RoleSitePrivilage) manager.getById(RoleSitePrivilage.class, getRsp().getId()));
			setRoleSite(getRsp().getRoleSite());
			manager.remove(getRsp());
		}
		return SUCCESS;
	}
}