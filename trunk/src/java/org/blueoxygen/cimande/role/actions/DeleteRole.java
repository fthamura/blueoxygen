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

/**
 * @author Umar Khatab umar@intercitra.com
 *
 */
public class DeleteRole extends ViewRole {
	
	public String execute() {
		if (super.execute().equalsIgnoreCase(SUCCESS)) {
		pm.remove(role);
		return SUCCESS;
		
		} else {
			
		addActionError("Such Role couldn't be found. Removal failed");
		return ERROR;
		}
	
	}

}
