/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.site.actions;

/**
 * @author Umar Khatab umar@intercitra.com
 *
 */
public class DeleteSite extends ViewSite {

	public String execute() {
		if (super.execute().equalsIgnoreCase(SUCCESS)) {
		pm.remove(site);
		return SUCCESS;
		
		} else {
			
		addActionError("Such Site couldn't be found. Removal failed");
		return ERROR;
		}
	
	}


}
