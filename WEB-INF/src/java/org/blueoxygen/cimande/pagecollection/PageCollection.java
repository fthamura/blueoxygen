/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.pagecollection;
/**
 * @version 	1.0
 * @author
 */
public class PageCollection {
	
	private String sId = null;
	private String sSiteId = null;
	private String sName = null;
    private String sDescription = null;
    private String sSkinId = null;
    private String sSkinName = null;
    private String sCategory = null;
    private String sActiveFlag = null;
	public PageCollection () throws Exception {
			super();		
		}
    
    public PageCollection(String sId,String sSiteId,String sName,String sDescription,String sSkinId,String sSkinName,String sCategory,String sActiveFlag) {
        this.sId = sId;
        this.sSiteId = sSiteId;        
        this.sName = sName;
        this.sDescription = sDescription;
        this.sSkinId = sSkinId;
        this.sSkinName = sSkinName;
        this.sCategory = sCategory;  
        this.sActiveFlag = sActiveFlag;      
    }
    public String getId() {
       return this.sId;
    }
    public String getSiteId() {
       return this.sSiteId;
    }
    public String getName() {
       return this.sName;
    }
    public String getDescription() {
       return this.sDescription;
    }
    public String getSkinId() {
       return this.sSkinId;
    }
    public String getSkinName() {
       return this.sSkinName;
    }
    public String getCategory() {
       return this.sCategory;
    }
    
    public String getActiveFlag() {
       return this.sActiveFlag;
    }


  public int compareTo(Object o) {
	PageCollection n = (PageCollection)o;
	int lastCmp = sId.compareTo(n.sId);
		return (lastCmp);
  }		
}
