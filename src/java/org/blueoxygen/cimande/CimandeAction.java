/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande;



import org.blueoxygen.cimande.security.User;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Administrator
 *

 */
public class CimandeAction extends ActionSupport implements BlueOxygenSessionCredentialsAware{
	
	private BlueOxygenSessionCredentials sessionCredentials;

	public void setBlueOxygenSessionCredentials(BlueOxygenSessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}
	public User getBackendUser() {
       return sessionCredentials.getBackendUser();
    }

}
