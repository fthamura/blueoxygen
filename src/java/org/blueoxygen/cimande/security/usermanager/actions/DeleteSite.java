/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.security.usermanager.actions;

import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.cimande.security.usermanager.UserSite;
import org.blueoxygen.cimande.security.usermanager.actions.ViewSite;
/**
 * @author Abdul Rizal
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class DeleteSite extends UserSiteForm {

	public String execute() {

		String result = super.execute();
		if(getUserSite().getId() != null && !"".equalsIgnoreCase(getUserSite().getId())){
			setUserSite((UserSite) manager.getById(UserSite.class, getUserSite().getId()));
		}
		if (result.equalsIgnoreCase(SUCCESS)) {

			manager.remove(getUserSite());
			return SUCCESS;
		} else {
			addActionError("Cannot find such Descriptor");
			return ERROR;
		}
	}
}