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

import org.blueoxygen.dal.DbBean;

import java.sql.*;
import java.util.*;
/**
 * @version 	1.0
 * @author		Frans Thamura
 */
public class PageCollection {

	private String sId = null;
	private ResultSet myResultSet = null;
	private String mySQL;       
	private String sPCDetailId, sPCName,sPCSiteId,sPCSkinId;
	private DbBean dbBean = new DbBean();
	private Map map = null;
	
	/**
	 * Constructor for Collection
	 */
	public PageCollection(String sId, String sSiteId) throws SQLException, Exception {
		sPCSiteId=sSiteId;
		
		dbBean.connect();
		mySQL = "SELECT * from page_collection WHERE id='"+sId+"' AND site_id='"+sSiteId+"'";
		
		myResultSet = dbBean.execSQL(mySQL);
		myResultSet.next();		
		sPCName = myResultSet.getString("name");
		sPCSiteId = myResultSet.getString("site_id");
		sPCSkinId = myResultSet.getString("skin_id");
		
		dbBean.close();
	}
	
	public String getId() {
		return sId;
	}
	
	public Map getPageCollectionMap() {
		return map;
	}
	public String getDetailId() {
		return sPCDetailId;
	}	
	public String getName() {
		return sPCName;
	}
	public String getSkinId() {
		return sPCSkinId;
	}
	
	public String getSiteId() {
		return sPCSiteId;
	}

}
