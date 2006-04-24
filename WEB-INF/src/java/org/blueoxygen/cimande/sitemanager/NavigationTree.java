/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.sitemanager;

import org.blueoxygen.cimande.sitemanager.OldNavigationTreeMenu;
import org.blueoxygen.cimande.descriptor.ModuleFunction;

import org.blueoxygen.dal.DbBean;

import java.util.*;
import java.sql.*;

/**
 * Cimande Navigation Tree to generate recursive infinite menu 
 * @version   0.1
 * @author    <a href="mailto:frans@blueoxygen.org">Frans Thamura</a>
 */
public class NavigationTree
{
	private String roleId=null, siteId=null;
    
    public NavigationTree(String roleId, String siteId) {
    	this.roleId = roleId;
    	this.siteId = siteId;
    }
    /**
     * This function will get all the strings from NavigationTreeMenu and generate a treemenu.com's menu in javascript format
     * 
     */
    
    public String getMTMScript() throws Exception, SQLException{
    	ResultSet myResultSet = null;
	String mySQL,			MTMJavaScript = "";       
	DbBean myDbBean = new DbBean();
	
    	String a ;
    	String variableNode="menu";;

	Iterator iter;
	

		
		ModuleFunction membership ;
		OldNavigationTreeMenu dbTree;
		
		myDbBean.connect();
        
                // mySQL="SELECT DISTINCT module_function_id from module_function, role_privilage where module_function.id=role_privilage.module_function_id AND role_privilage.role_id='"+this.roleId+"' AND role_privilage.active_flag='1' AND module_function.active_flag='1' ORDER BY module_function.description";
                
                // check the role_site, 
				/*
				 */
				mySQL = "SELECT COUNT(id) as total from role_site WHERE role_id='"+this.roleId+"' AND rsite_id='"+this.siteId+"'";
				System.out.println(mySQL);
                myResultSet=myDbBean.execSQL(mySQL); 
                myResultSet.next();
                if (myResultSet.getInt("total")<=0) {
                	System.out.println("Role Default Executed");
                	// read all module function from role_privilage
	                mySQL = "SELECT DISTINCT module_function.id, module_function.description FROM module_function , role_privilage AS privilage, backend_user WHERE module_function.id=privilage.module_function_id AND privilage.privilage_flag='1' AND module_function.iparent='0' AND privilage.role_id=backend_user.role_id AND module_function.active_flag='1' AND privilage.role_id='"+this.roleId+"' ORDER BY module_function.description";
                	
                } else {
                	// read all module funciton from role_site_privilage.
					System.out.println("Role Site Executed");
					mySQL = "SELECT DISTINCT module_function.id, module_function.description FROM module_function , role_site, role_site_privilage AS privilage, backend_user WHERE module_function.id=privilage.module_function_id AND privilage.privilage_flag='1' AND module_function.iparent='0' AND role_site.role_id=backend_user.role_id AND module_function.active_flag='1' AND role_site.role_id='"+this.roleId+"' AND role_site.rsite_id='"+this.siteId+"' AND role_site.id=privilage.role_site_id ORDER BY module_function.description";
                }
                	

                myResultSet=myDbBean.execSQL(mySQL); 
                int iFirstNode=0;
                // Main menu. 
				MTMJavaScript = MTMJavaScript + "var menu = null;menu = new MTMenu();";

                while (myResultSet.next()) {
                	
					
					dbTree = new OldNavigationTreeMenu(myResultSet.getString("id"),variableNode,iFirstNode);
			
					MTMJavaScript = MTMJavaScript + variableNode+".MTMAddItem(new MTMenuItem(\"";
					MTMJavaScript = MTMJavaScript + myResultSet.getString("description");
					MTMJavaScript = MTMJavaScript + "\")); \n";					
					
					// check the child is > 0
					MTMJavaScript = MTMJavaScript +  "var "+variableNode+"_"+iFirstNode+" = null;	"+variableNode+"_"+iFirstNode+" = new MTMenu();" + "\n";
					MTMJavaScript = MTMJavaScript + dbTree.getMTMJavaScript();

					MTMJavaScript = MTMJavaScript +  variableNode+".items["+iFirstNode+"].MTMakeSubmenu("+variableNode+"_"+iFirstNode+");\n\n" ;
			
		
					iFirstNode++;
				}
					
					myDbBean.close();
	return MTMJavaScript;
	
    }
    
}

