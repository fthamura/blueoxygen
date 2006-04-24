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
 
public class WorkflowRole{
	/** Initial variables
	 */
	private String sId=""; 	// id
	
	private boolean bActiveFlag=false; 	// active_flag
	private boolean bViewFlag=false; 	// view_flag
	
	private ResultSet myResultSet = null;
	private String mySQL;       
	
	DbBean myDbBean = new DbBean();
	
	// default variable
	private String sTable = "workflow_role";
	
	// field 
	private String sDescription, sName;
	
	/** 
	 * Constructor
	 */
	
	public WorkflowRole (String sId) throws ClassNotFoundException, SQLException, Exception {
		this.sId = sId;
		
		myDbBean.connect();
        
                mySQL = "SELECT * FROM "+sTable+" WHERE "+sTable+".id='"+sId+"'" ;
                
                
                myResultSet=myDbBean.execSQL(mySQL); 
	
	         while (myResultSet.next()) 
	         {

	         	// customize this as you need..
	         	if (myResultSet.getString("description")!=null) {
	         		this.sDescription=myResultSet.getString("description");
	         	}
	         	
	         	if (myResultSet.getString("name")!=null) {
	         		this.sName=myResultSet.getString("name");
	         	}
	         	
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
	
	public String getDescription() {
		return this.sDescription;
	}
	
	public String getName() {
		return this.sName;
	}
	
}

			