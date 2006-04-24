/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.rolemapper;

/**
 * @author Frans Thamura
 *
 */
import org.blueoxygen.dal.DbBean;
import org.blueoxygen.cimande.descriptor.*;

import java.util.*;
import java.sql.*;

public class RoleSitePrivilageMapper {
	
	Map 	map = null;
	String 	sRoleSiteId = "", 	sSiteId = "", sModuleFunctionId = ""; // SiteId
	
	private ResultSet myResultSet = null;
	private String mySQL;       
	private String sParameter="";
	
	DbBean myDbBean = new DbBean();
	
	ModuleFunction moduleFunction;
	/** Constructor
	 * input: 	sId = Role Site Id
	 * 			sSiteId = Site Id
	 */
	
	public RoleSitePrivilageMapper(String sRoleSiteId)  throws SQLException, Exception{
		
		map = new HashMap();
		
		this.sRoleSiteId = sRoleSiteId;
		
		// read role_site_privilage Table and put it in map
		mySQL = "SELECT DISTINCT module_function_id FROM role_site_privilage WHERE role_site_id='"+ sRoleSiteId +"'";// AND rsite_id='"+sSiteId+"'";
		//System.out.println("Role Site Priv SQL:"+mySQL);
		myDbBean.connect();
		myResultSet=myDbBean.execSQL(mySQL); 
	
		// put all resultset to ModuleFunction DescriptorObject

   	   	while (myResultSet.next()) {

   	   		// got role_site_privilage.id
   	   		sModuleFunctionId = myResultSet.getString("module_function_id");
   	   		moduleFunction = new ModuleFunction(sModuleFunctionId, sSiteId);
   	   		//System.out.println("Add MFId:"+sModuleFunctionId);
   	   		map.put(sModuleFunctionId, moduleFunction);

       	}
		myDbBean.close();
	}
	
	/** 
	 * add a module function to hashmap
	 */
	
	public void add (String sModuleFunctionId)  throws SQLException, Exception {
	
		// put ModuleFunction Object to a Map
		map.put(sModuleFunctionId, new ModuleFunction(sModuleFunctionId, sSiteId));
	}
	
	public void remove (String sModuleFunctionId) throws SQLException, Exception {
		map.remove(sModuleFunctionId);
	}
	
	public void clear() {
		map.clear();
	}
	
	public int getNumberModules() {
		int iTotal = 0;
		iTotal = 4;
		
		return iTotal;
		
	}
	
	public Map getModuleFunctionMap() {
		return map;
	}
	
	public String getRoleId() {
		
		return sRoleSiteId;
	}
	
	public RoleSite getRoleSite() throws ClassNotFoundException, SQLException, Exception{
		return new RoleSite(sRoleSiteId);
	}
	
}
