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

/**
 * @author Umar Khatab umar@intercitra.com
 *
 */
public class DeleteRolePrivilage extends ViewRolePrivilage{

	public String execute() {
		if (super.execute().equalsIgnoreCase(SUCCESS)) {
		if(privilage.getRole()==null)
			{
		pm.remove(privilage);
		return SUCCESS;
			}
				
			else
			{
				privilage.setRole(null);
				return INPUT;
			}
		} else {
			
		addActionError("Such Role Privilage couldn't be found. Removal failed");
		return ERROR;
		}
	
	}


}
