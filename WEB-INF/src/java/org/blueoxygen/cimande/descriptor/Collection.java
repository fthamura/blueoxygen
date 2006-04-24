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
 * @author
 */
public class Collection {

	private String sId = null;
	private ResultSet myResultSet = null;
	private String mySQL;       
	private String sCollectionDetailId, sCollectionName,sCollectionSiteId,sCollectionType;
	private DbBean dbBean = new DbBean();
	private Map map = null;
	
	/**
	 * Constructor for Collection
	 */
	public Collection(String sId, String sSiteId) throws SQLException, Exception {
		sCollectionSiteId=sSiteId;
		
		dbBean.connect();
		mySQL = "SELECT * from collection WHERE id='"+sId+"'";
		
		myResultSet = dbBean.execSQL(mySQL);
		myResultSet.next();		
		sCollectionName = myResultSet.getString("name");
		sCollectionSiteId = myResultSet.getString("site_id");
		sCollectionType = myResultSet.getString("status");
		
		dbBean.close();
	}
	
	public Map getMap() {
		return map;
	}
	public String getName() {
		return sCollectionName;
	}
	public String getSiteId() {
		return sCollectionSiteId;
	}
	public String getType() {
		return sCollectionType;
	}

}
