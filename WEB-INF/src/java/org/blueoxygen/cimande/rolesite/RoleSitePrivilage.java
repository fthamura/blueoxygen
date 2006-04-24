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
public class RoleSitePrivilage implements Comparable {
	
    private String sSiteId = null;
    private String sRoleID = null;
    private String sRoleName = null;    
    private String sRSiteID = null;
    private String sRSiteName = null;

    
       
    
    
    
    public RoleSitePrivilage () throws Exception {
			super();		
		}
    public RoleSitePrivilage(String sSiteId,String sRoleID,String sRoleName,String sRSiteID,String sRSiteName) {
        
        this.sSiteId = sSiteId;
        this.sRoleID = sRoleID;
        this.sRoleName = sRoleName;
        this.sRSiteID = sRSiteID;      
        this.sRSiteName = sRSiteName;
    }
    
    public String getSiteId() {
       return this.sSiteId;
    }
    
    public String getRoleID() {
       return this.sRoleID;
    }
    
    public String getRoleName() {
       return this.sRoleName;
    }

    public String getRSiteID() {
       return this.sRSiteID;
    }
    
    public String getRSiteName() {
       return this.sRSiteName;
    }
    

  public int compareTo(Object o) {
	RoleSitePrivilage n = (RoleSitePrivilage)o;
	int lastCmp = sRoleID.compareTo(n.sRoleID);
		return (lastCmp);
  }		
}
