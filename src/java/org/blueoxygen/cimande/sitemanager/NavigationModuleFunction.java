/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.sitemanager;
/**
 * Cimande Navigation 
 * @version   0.1
 * @author    <a href="mailto:frans@blueoxygen.org">Frans Thamura</a>
 */

import org.blueoxygen.cimande.descriptor.ModuleFunction;

public class NavigationModuleFunction extends ModuleFunction{

	private String sMenuVariable="";
	/** 
	 * Constructor
	 */ 
	 
	public NavigationModuleFunction(String sId, String menuVariableName) throws ClassNotFoundException, Exception {

		super(sId,0);
		
		
		
	}
	
	
	public String getMenuVariable() {
		return this.sMenuVariable;
	}
		
	public void setMenuVariable(String variable) {
		
		this.sMenuVariable=variable;
	}
	
}

			