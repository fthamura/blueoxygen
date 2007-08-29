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
 
public class ModuleFunction{
	/** Initial variables
	 */
	private String sParentId=""; //iparent
	private String sId=""; 	// id
	
	private String sDescription=""; 		// description
	
	private String sDescriptorId=""; 		// descriptor_id table
	private String sDescriptorTableReference=""; 	// ref_desc table
	private String sUrlDescriptor;			// url_descriptor
	
	private boolean bActiveFlag=false; 	// active_flag
	private boolean bViewFlag=false; 	// view_flag
	
	
	private int level=0;
	
	private ResultSet myResultSet = null;
	private String mySQL;       

	
	DbBean myDbBean = new DbBean();
	
	// default variable
	private String sTable = "module_function";
	
	/** 
	 * Constructor
	 */
	
	public ModuleFunction (String sId, String sSiteId) throws ClassNotFoundException, SQLException, Exception {
		this.sId = sId;
		
		myDbBean.connect();
        
                mySQL = "SELECT * FROM "+sTable+" WHERE "+sTable+".id='"+sId+"'";
                
                
                myResultSet=myDbBean.execSQL(mySQL); 
	
	         while (myResultSet.next()) 
	         {

			if (myResultSet.getString("iparent")!=null) {
	         		this.sParentId=myResultSet.getString("iparent");
	         	}
	         	
	         	// customize this as you need..
	         	if (myResultSet.getString("description")!=null) {
	         		this.sDescription=myResultSet.getString("description");
	         	}
	         	
	         	if (myResultSet.getString("descriptor_id")!=null) {
	         		this.sDescriptorId=myResultSet.getString("descriptor_id");
	         	}
	         	
	         	if (myResultSet.getString("ref_desc")!=null) {
	         		this.sDescriptorTableReference=myResultSet.getString("ref_desc");
	         	}
	         	
	         	// end of customization

	         }
	         myDbBean.close();

	}
	
	public ModuleFunction(String sId, int level) throws ClassNotFoundException, SQLException, Exception {
		
		this.sId = sId;
		this.level = level;
		// System.out.println("level"+this.level);
		
		myDbBean.connect();
        
                mySQL = "SELECT * FROM "+sTable+" WHERE "+sTable+".id='"+sId+"'";
                
                myResultSet=myDbBean.execSQL(mySQL); 
	
	         while (myResultSet.next()) 
	         {

			if (myResultSet.getString("iparent")!=null) {
	         		this.sParentId=myResultSet.getString("iparent");
	         	}
	         	
	         	// customize this as you need..
	         	if (myResultSet.getString("description")!=null) {
	         		this.sDescription=myResultSet.getString("description");
	         	}
	         	
	         	if (myResultSet.getString("descriptor_id")!=null) {
	         		this.sDescriptorId=myResultSet.getString("descriptor_id");
	         	}
	         	
	         	if (myResultSet.getString("ref_desc")!=null) {
	         		this.sDescriptorTableReference=myResultSet.getString("ref_desc");
	         	}
	         	
	         	// end of customization

	         }
	         myDbBean.close();
	}
	
	/* Field Manipulator 
	 */
	public String getParentId() {
		return this.sParentId;
	}
	
	
	public String getId() {
		return this.sId;
	}
	
	public int getLevel() {
		return this.level;
	}
		
	public void setLevel(int level) {
		
		this.level=level;
	}
	
	// refer to the database design please..
	
	public String getDescription() {
		return this.sDescription;
	}
	
	public String getDescriptorId() {
		return this.sDescriptorId;
	}
	
	public String getDescriptorTableReference() {
		return this.sDescriptorTableReference;
	}
	
}

			