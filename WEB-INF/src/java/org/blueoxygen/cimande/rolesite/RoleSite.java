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
public class RoleSite implements Comparable {
	
    private String sSiteId = null;
    private String sID = null;
    private String sRolename = null;
    private String sModulename = null;
    private String sActive = null;
    
       
    
    
    
    public RoleSite () throws Exception {
			super();		
		}
    public RoleSite(String sSiteId,String sID,String sRolename,String sModulename,String sActive) {
        
        this.sSiteId = sSiteId;
        this.sID = sID;
        this.sRolename = sRolename;
        this.sModulename = sModulename;      
        this.sActive = sActive;
    }
    
    public String getSiteId() {
       return this.sSiteId;
    }
    
    public String getID() {
       return this.sID;
    }
    
    public String getRolename() {
       return this.sRolename;
    }

    public String getModulename() {
       return this.sModulename;
    }
    
    public String getActive() {
       return this.sActive;
    }
    

  public int compareTo(Object o) {
	RoleSite n = (RoleSite)o;
	int lastCmp = sID.compareTo(n.sID);
		return (lastCmp);
  }		
}
