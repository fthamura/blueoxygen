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

public class Descriptor{

	private String sId=""; 				// id
	private String sDescriptorGroupId=""; 		// descriptor_group_id
	private String sName=""; 			// name
	private String sDescription=""; 		// description
	private String sUrlDescriptor;			// url_descriptor
	private String sCreateBy;			// create_by
	private String sUpdateBy;			// update_by
	
	private Date dCreateDate;			// create_date
	private Date dUpdateDate;			// update_date
	
	private boolean bActiveFlag=false; 	// active_flag
	
	private ResultSet myResultSet = null;
	private String mySQL;       
	private String sParameter="";
	
	DbBean myDbBean = new DbBean();
	
	// default variable
	private String sTable = "descriptor";
	
	/** 
	 * Constructor
	 */ 
	public Descriptor(String sId) throws ClassNotFoundException, SQLException, Exception {
		
		this.sId = sId;
		// System.out.println("level"+this.level);
		
		myDbBean.connect();
        
                mySQL = "SELECT * FROM "+sTable+" WHERE "+sTable+".id='"+sId+"'";
                
                myResultSet=myDbBean.execSQL(mySQL); 
	
	         while (myResultSet.next()) 
	         {

			// customize this as you need..
	         	if (myResultSet.getString("name")!=null) {
	         		this.sName=myResultSet.getString("name");
	         	}
	         	
	         	if (myResultSet.getString("description")!=null) {
	         		this.sDescription=myResultSet.getString("description");
	         	}
	         	
	         	if (myResultSet.getString("descriptor_group_id")!=null) {
	         		this.sDescriptorGroupId=myResultSet.getString("descriptor_group_id");
	         	}
	         	
	         	if (myResultSet.getString("url_descriptor")!=null) {
	         		this.sUrlDescriptor=myResultSet.getString("url_descriptor");
	         	}
	         	
	         	// end of customization

	         }
	         myDbBean.close();
	}
	
	
	public String getId() {
		return this.sId;
	}
	
	
	// refer to the database design please..
	
	public String getName() {
		return this.sName;
	}
	
	public String getDescription() {
		return this.sDescription;
	}
	
	public String getDescriptorGroupId() {
		return this.sDescriptorGroupId;
	}
	
	public String getUrlDescriptor() {
		return this.sUrlDescriptor;
	}
	
}

			