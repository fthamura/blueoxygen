/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.usersite;
/**
 * @version 	1.0
 * @author
 */
public class UserSite implements Comparable {
	
    private String sSiteId = null;
    private String sID = null;
    private String sUsername = null;
    private String sPassword = null;
    private String sFirstName = null;
    private String sLastName = null;
    private String sCompanyID = null;
    private String sCompanyName = null;    
    private String sPositionID = null;    
    private String sPositionName = null;     
    private String sEmail = null;
    private String sAddress1 = null;
    private String sAddress2 = null;
    private String sCity = null;
    private String sRole = null;
    private String sDescription = null;
    private String sCal = null; 
    private String sProject = null; 
    private String sActiveFlag = null;
      
    
    
    
    public UserSite () throws Exception {
			super();		
		}
    public UserSite(String sSiteId,String sID,String sUsername,String sPassword,String sFirstName,String sLastName,String sCompanyID,String sCompanyName,String sPositionID,String sPositionName,String sEmail,String sAddress1,String sAddress2,String sCity,String sRole,String sDescription,String sCal,String sProject,String sActiveFlag) {
        
        this.sSiteId = sSiteId;
        this.sID = sID;
        this.sUsername = sUsername;
        this.sPassword = sPassword;
        this.sFirstName = sFirstName;
        this.sLastName = sLastName;
        this.sCompanyID = sCompanyID;
        this.sCompanyName = sCompanyName;
        this.sPositionID = sPositionID;
        this.sPositionName = sPositionName;        
        this.sEmail = sEmail;
        this.sAddress1 = sAddress1;
        this.sAddress2 = sAddress2;
        this.sCity = sCity;
        this.sRole = sRole;
        this.sDescription = sDescription;        
        this.sCal = sCal;
        this.sProject = sProject;
        this.sActiveFlag = sActiveFlag;
        
    }
    
    public String getSiteId() {
       return this.sSiteId;
    }
    
    public String getID() {
       return this.sID;
    }
    
    public String getUsername() {
       return this.sUsername;
    }

    public String getPassword() {
       return this.sPassword;
    }
    
    public String getFirstName() {
       return this.sFirstName;
    }
    
    public String getLastName() {
       return this.sLastName;
    }
    
    public String getCompanyID() {
       return this.sCompanyID;
    }
    public String getCompanyName() {
       return this.sCompanyName;
    }

    public String getPositionID() {
       return this.sPositionID;
    }
    
    public String getPositionName() {
       return this.sPositionName;
    }
    
	public String getEmail() {
       return this.sEmail;
    }
    
    public String getAddress1() {
       return this.sAddress1;
    }

    public String getAddress2() {
       return this.sAddress2;
    }
    
    public String getCity() {
       return this.sCity;
    }
    
    public String getRole() {
       return this.sRole;
    }
    
    public String getDescription() {
       return this.sDescription;
    }
 	public String getCal() {
       return this.sCal;
    }
 	public String getProject() {
       return this.sProject;
    }    
 	public String getActiveFlag() {
       return this.sActiveFlag;
    }
    

  public int compareTo(Object o) {
	UserSite n = (UserSite)o;
	int lastCmp = sID.compareTo(n.sID);
		return (lastCmp);
  }		
}
