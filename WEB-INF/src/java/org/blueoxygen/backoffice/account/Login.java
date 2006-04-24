/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.backoffice.account;

import org.blueoxygen.dal.DbBean;
import org.blueoxygen.util.StringUtils;
import java.sql.*;

public class Login{
	private String username="";
	private String password="";
	private String memberId="";
	private String firstName="";
	private String hashCode="";
	private String email="";
	private String roleName="";
	private String role_id="";
	private boolean validate=false;

	ResultSet myResultSet = null;
	String mySQL;       
	
	DbBean myDbBean = new DbBean();
	StringUtils string = new StringUtils();
			
	public Login() { 
		super();
	
	}
	
	/* Constructor
	 * input: Member Id
	 */
	 
	public Login (String hashCode) throws ClassNotFoundException, SQLException, Exception {
		this.hashCode = hashCode;
		this.memberId = string.decodeBase64(hashCode);
		myDbBean.connect();
	     
		mySQL = "SELECT backend_user.*, workflow_role.name FROM backend_user, workflow_role WHERE backend_user.role_id=workflow_role.id AND backend_user.id='"+this.memberId+"'";
                myResultSet=myDbBean.execSQL(mySQL); 
                while (myResultSet.next()) 
	        	{
	        	if (myResultSet.getString("id")!=null) {
	         		this.memberId=myResultSet.getString("id");
	         		
	         	}

	         		this.firstName=myResultSet.getString("first_name");
                	this.roleName=myResultSet.getString("name");
                	this.email=myResultSet.getString("email");
                	this.role_id=myResultSet.getString("role_id");
					validate = true;
					this.username=myResultSet.getString("username");
					this.password=myResultSet.getString("password");
                }
                	 
	    myDbBean.close();
	
	}

	/* Constructor
	 * input: username and password
	 */
	 
	public Login (String username, String pass) throws ClassNotFoundException, SQLException, Exception {
		this.password = string.encodeBase64(pass);
		myDbBean.connect();
	     
		mySQL = "SELECT backend_user.*, workflow_role.name FROM backend_user, workflow_role WHERE backend_user.role_id=workflow_role.id AND backend_user.username='"+username+"' AND backend_user.password='"+password+"'";
                myResultSet=myDbBean.execSQL(mySQL); 
                while (myResultSet.next()) 
	        	{
	        	if (myResultSet.getString("id")!=null) {
	         		this.memberId=myResultSet.getString("id");
	         		
	         	}

	         		this.firstName=myResultSet.getString("first_name");
                	this.roleName=myResultSet.getString("name");
                	this.email=myResultSet.getString("email");
                	this.role_id=myResultSet.getString("role_id");
					validate = true;
					this.hashCode=string.encodeBase64(memberId);
					this.username=myResultSet.getString("username");
					this.password=myResultSet.getString("password");
                }
                	 
	    myDbBean.close();
	
	}
	
	/* get Hash Code of member */ 
	public String getHashCode() {
		return this.hashCode;
	}
	
	/* get Member ID*/
	public String getMemberId() {
		return memberId;
	}

	public String getUsername() {
		return username;
	}
		
	/* check status of membership validation 
	 * false mean the username and passoword is is missmatch
	 * true mean validation successfully
	 */
	public boolean validate() throws ClassNotFoundException, SQLException, Exception
	{
		return validate;
	}
	
	/** get First Name of Member */
	public String getFirstName() throws ClassNotFoundException, SQLException
	{	
		return this.firstName;
	}
	
	/** get Email Address of Member */	
	public String getEmailAddress() throws ClassNotFoundException, SQLException
	{
		return this.email;
	}

	/** get Role Name of Member */
	public String getRoleName() throws ClassNotFoundException, SQLException
	{
		return this.roleName;
	}

	/** get role ID */
 	public String getRoleId() throws ClassNotFoundException, SQLException
 	{
		return this.role_id;
	}


	/** Get user password */
	public String getPassword()
	{
		return this.password;
	}
	
}

			