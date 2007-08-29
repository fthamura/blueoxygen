/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.rolesite;
/**
 * @version 	1.0
 * @author
 */
public class ModuleFunctionSite implements Comparable {
	
    private String sID = null;
    private String sSiteId= null;
    private String sSiteName = null;

    
       
    
    
    
    public ModuleFunctionSite () throws Exception {
			super();		
		}
    public ModuleFunctionSite(String sID,String sSiteId,String sSiteName) {
        this.sID = sID;        
        this.sSiteId = sSiteId;
        this.sSiteName = sSiteName;
    }
    
    public String getSiteId() {
       return this.sSiteId;
    }
    
    public String getID() {
       return this.sID;
    }
    
    public String getSiteName() {
       return this.sSiteName;
    }


    

  public int compareTo(Object o) {
	ModuleFunctionSite n = (ModuleFunctionSite)o;
	int lastCmp = sID.compareTo(n.sID);
		return (lastCmp);
  }		
}
