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


/* This class is created to manipulate "module_function" table
 */
 
public class RoleSite{
	/** Initial variables
	 */
	private String sId=""; 	// id
	
	private boolean bActiveFlag=false; 	// active_flag
	private boolean bViewFlag=false; 	// view_flag
	
	private ResultSet myResultSet = null;
	private String mySQL;       
	
	DbBean myDbBean = new DbBean();
	
	// default variable
	private String sTable = "role_site";
	
	// field 
	private String sRoleId, sSiteId;
	
	/** 
	 * Constructor
	 */
	
	public RoleSite (String sId) throws ClassNotFoundException, SQLException, Exception {
		this.sId = sId;
		
		myDbBean.connect();
        
                mySQL = "SELECT * FROM "+sTable+" WHERE "+sTable+".id='"+sId+"'" ;
                
                
                myResultSet=myDbBean.execSQL(mySQL); 
	
	         while (myResultSet.next()) 
	         {

	         	// customize this as you need..
	         	if (myResultSet.getString("role_id")!=null) {
	         		this.sRoleId=myResultSet.getString("role_id");
	         	}
	         	
	         	if (myResultSet.getString("rsite_id")!=null) {
	         		this.sSiteId=myResultSet.getString("rsite_id");
	         	}
	         	
         		this.bActiveFlag=myResultSet.getBoolean("active_flag");

	         	// end of customization

	         }
	         myDbBean.close();

	}
	

	/* Field Manipulator 
	 */
	
	public String getId() {
		return this.sId;
	}
	
	// refer to the database design please..
	
	public String getRoleId() {
		return this.sRoleId;
	}
	
	public WorkflowRole getRole() throws ClassNotFoundException, SQLException, Exception{
		return new WorkflowRole(sRoleId);
	}
	
	public Site getSite() throws ClassNotFoundException, SQLException, Exception{
		return new Site(sSiteId);
	}

	public String getSiteId() throws ClassNotFoundException, SQLException, Exception{
		return sSiteId;
	}
	
}

			