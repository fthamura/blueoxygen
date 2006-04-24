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

import org.blueoxygen.dal.DbBean;
import org.blueoxygen.cimande.descriptor.*;
import java.util.*;
import java.sql.*;


public class RoleManager {

	WorkflowRole workflowRole;
	Map mRolePrivilage,mRoleSitePrivilage, mRoleSite;
	RoleSitePrivilageMapper roleSitePrivilageMapper;
	String sId, sSiteId;
	
	
	private ResultSet myResultSet = null;
	private String mySQL;       
	private String sParameter="";
	
	DbBean myDbBean = new DbBean();
	
	// default variable
	private String sTable = "module_function";
	
	/**
	 * Constructor for Role Manager
	 * Role Manager will handle all Role Management.
	 * This class will manage a Role's Module Function default and Role's Module Function for specific site.
	 * Input:
	 * 		sId = Role Id
	 * Output
	 * 		RolePrivilage Hash Map (contains Module Function for Role Default)
	 * 		Role
	 */

	public RoleManager(String sId)  throws ClassNotFoundException, SQLException, Exception {
		
		ResultSet myResultSet2 = null;
		
		this.sId = sId;
		
		workflowRole = new WorkflowRole (sId);
		
		// refill all object content to Mapper
		// read from role_privilage and put in RolePrivilageMapper
		mySQL = "SELECT * FROM role_privilage WHERE id='"+ sId +"' AND site_id='"+sSiteId+"'";
		
		myResultSet=myDbBean.execSQL(mySQL); 
		
		String sRolePrivilageId,sRoleSitePrivilageId;
	
        while (myResultSet.next()) {
        	sRolePrivilageId = myResultSet.getString("id");
        	
        	mRolePrivilage.put(sRolePrivilageId, new RolePrivilageMapper(sRolePrivilageId));
	         	
        }
		
		// read from role_site and put in RoleSiteMapper
		mySQL = "SELECT * FROM role_site WHERE id='"+ sId +"' AND site_id='"+sSiteId+"'";
		
		myResultSet=myDbBean.execSQL(mySQL); 
	
        while (myResultSet.next()) {
			
        	sRoleSitePrivilageId = myResultSet.getString("id");
        	
        	mRoleSitePrivilage.put(sRoleSitePrivilageId, new RolePrivilageMapper(sRoleSitePrivilageId));

        }
	}

	// Workflow Role 
	// --------------
	
	public WorkflowRole getWorkflowRole () {
		return workflowRole;
	}

	// Role Privilage 
	// --------------
	
	/** 
	 * add RolePrivilageMapper to Map
	 */
	public void addRolePrivilage(String sId, ModuleFunction moduleFunction) {
		
		mRolePrivilage.put(sId, moduleFunction);
			
	}
	
	/** 
	 * add RolePrivilageMapper to Map
	 */
	public void removeRolePrivilage(String sId) {
		
		mRolePrivilage.remove(sId);
			
	}

	/** 
	 * clear all value in RoleSitePrivilageMapper
	 */

	public void clearRolePrivilage () {
		mRolePrivilage.clear();
	}
	
	// Role Privilage	
	
	/** 
	 * add RoleSitePrivilageMapper to Map
	 */
	public void addRoleSitePrivilage(String sId, RolePrivilageMapper roleSiteMapper) throws ClassNotFoundException, SQLException, Exception {
		
		mRoleSite.put(sId, new RoleSite(sId));
			
	}
	
	/** 
	 * clear all value in RoleSitePrivilageMapper 
	 */

	public void clearRoleSitePrivilage () {
		roleSitePrivilageMapper.clear();
	}

}
