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
public class Workflowrole implements Comparable {
	
    private String sSiteId = null;
    private String sID = null;
    private String sWorkflowname = null;
    private String sWorkflowdesc = null;

    
       
    
    
    
    public Workflowrole () throws Exception {
			super();		
		}
    public Workflowrole(String sSiteId,String sID,String sWorkflowname,String sWorkflowdesc) {
        
        this.sSiteId = sSiteId;
        this.sID = sID;
        this.sWorkflowname = sWorkflowname;
        this.sWorkflowdesc = sWorkflowdesc;      
        
    }
    
    public String getSiteId() {
       return this.sSiteId;
    }
    
    public String getID() {
       return this.sID;
    }
    
    public String getWorkflowname() {
       return this.sWorkflowname;
    }

    public String getWorkflowdesc() {
       return this.sWorkflowdesc;
    }
    
    

  public int compareTo(Object o) {
	Workflowrole n = (Workflowrole)o;
	int lastCmp = sID.compareTo(n.sID);
		return (lastCmp);
  }		
}
