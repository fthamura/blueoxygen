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


import org.blueoxygen.backoffice.account.Login;


import com.opensymphony.xwork.ActionSupport;

/**
 * @author Administrator
 *
 * To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class CimandeAction extends ActionSupport implements BlueOxygenSessionCredentialsAware{
	
	private BlueOxygenSessionCredentials sessionCredentials;

	public void setBlueOxygenSessionCredentials(BlueOxygenSessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}
	public BackendUser getBackendUser() {
       return sessionCredentials.getBackendUser();
    }
    
	public Login getLogin(){
		return sessionCredentials.getLogin();
	}
}
