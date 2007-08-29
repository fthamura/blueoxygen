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

import org.blueoxygen.cimande.descriptor.*;
import org.blueoxygen.cimande.rolemapper.RoleSitePrivilageMapper;
import org.blueoxygen.dal.DbBean;
import java.util.*;
import java.sql.*;


public class RoleSiteMapper {
	
	Map mRoleSitePrivilage;
	RoleSitePrivilageMapper roleSitePrivilageMapper;
	String sModuleFunctionId = "" , sSiteId = "", sRoleSiteId = "", sRoleId = "";

	private ResultSet myResultSet = null;
	private String mySQL;       
	private String sParameter="";

	DbBean myDbBean = new DbBean();
	private WorkflowRole workflowRole;
	/**
	 * Constructor 
	 * This constructor will read the database and put all result into RoleSitePrivilageMapper include all module function
	 * 
	 * input: 	sId = current active Role Id
	 * 			sSiteId = current active Site
	 */
	
	public RoleSiteMapper(String sRoleId)  throws ClassNotFoundException, SQLException, Exception{
		
		this.mRoleSitePrivilage = new HashMap();
		
		
		// read from role_site and get all list of site (rsite_id) and role_site.id 
		mySQL = "SELECT DISTINCT role_site.id, role_site.rsite_id, site.name FROM role_site, site WHERE role_site.role_id='"+ sRoleId +"' ORDER BY site.name";// AND site_id='"+sSiteId+"'";
		//System.out.println("Role Site SQL:"+mySQL);
		myDbBean.connect();
		myResultSet=myDbBean.execSQL(mySQL); 
		
   	   	while (myResultSet.next()) {
   	   		sRoleSiteId = myResultSet.getString("id");
   	   		//System.out.println("Role Site Id:"+sRoleSiteId);
   	   		// RoleSitePrivilageMapper will read all modulefunction and put all content in roleSitePrivilage
   	   		// mRoleSitePrivilage will be filled by RoleSitePrivilageMapper
   	   		roleSitePrivilageMapper = new RoleSitePrivilageMapper(sRoleSiteId);
   	   		//System.out.println("Add RSPM Id:"+sRoleSiteId);
        	mRoleSitePrivilage.put(sRoleSiteId, roleSitePrivilageMapper );
		
		}
		
		myDbBean.close();
	
	}
	
	/** 
	 * This object will return all default privilage for role in current site
	 */
	
	public Map getRoleSitePrivilageMap() {
		return this.mRoleSitePrivilage;
	}
	
	/** 
	 * add RoleSitePrivilageMapper to Map
	 * put all ModuleFunction into RolesitePrivilageMapper first before add to this method
	 * 
	 */
	public void add(String sId, RoleSitePrivilageMapper roleSitePrivilageMapper) {
		
		this.roleSitePrivilageMapper = roleSitePrivilageMapper;
		mRoleSitePrivilage.put(sId, roleSitePrivilageMapper);
			
	}
	
	/** 
	 * remove a RoleSitePrivilageMapper to Map
	 * 
	 */
	public void remove(String sId) {
		mRoleSitePrivilage.remove(sId);
	}
	

	/** 
	 * clear all value in RoleSitePrivilageMapper 
	 */

	public void clear () {
		roleSitePrivilageMapper.clear();
	}
	

}
