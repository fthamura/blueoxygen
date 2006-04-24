/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.descriptor;

/**
 * @author Frans Thamura
 *
 * To change this generated comment edit the template variable "typecomment":
 * Window>Preferences>Java>Templates.
 * To enable and disable the creation of type comments go to
 * Window>Preferences>Java>Code Generation.
 */

import java.util.*;

public class RoleSitePrivilage {

	Map map = null;
	String sRoleId;
	
	/** Constructor
	 * input: 	sId = current active Role Id
	 * 			sSiteId = current active Site
	 */
	public RoleSitePrivilage() {
		this.map = new HashMap();
	}

	
	
	/** add a module function to hashmap
	 */
	
	public void add (String sId, String sModuleFunctionId) {
		map.put(sId, sModuleFunctionId);
	}
	
	public void remove (String sId) {
	}
	
	public void clear() {
	}
	
	public int getNumberModules() {
		int iTotal = 0;
		
		return iTotal;
		
	}
	
	public String getRoleId() {
		
		return sRoleId;
	}
}
