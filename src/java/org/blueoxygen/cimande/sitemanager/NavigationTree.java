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

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.RolePrivilage;
import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.cimande.role.RoleSitePrivilage;
import org.blueoxygen.cimande.security.LoginFilter;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.util.StringUtils;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Cimande Navigation Tree to generate recursive infinite menu 
 * @version   0.1
 * @author    <a href="mailto:frans@blueoxygen.org">Frans Thamura</a>
 */
public class NavigationTree extends ActionSupport implements PersistenceAware
{	
	private PersistenceManager pm;
	private String roleId=null, siteId=null;
    private String tree_script = "";
    private List<ModuleFunction> modules = new ArrayList<ModuleFunction>();
   /* public NavigationTree() {
    	DbBean dbBean = new DbBean();
    	String user_id = (String)ServletActionContext.getRequest().getSession().getAttribute("GA_USER");
    	String mySQL = "SELECT role_id FROM backend_user WHERE backend_user.id='"+user_id+"'";
    	try {
	    	ResultSet myResultSet=dbBean.execSQL(mySQL);
	    	myResultSet.next();
    		this.roleId=myResultSet.getString("role_id");
		   	this.siteId = (String)ServletActionContext.getRequest().getSession().getAttribute("GS_USER");
    	} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }*/
    /**
     * This function will get all the strings from NavigationTreeMenu and generate a treemenu.com's menu in javascript format
     * 
     */
    
    public String execute() {
    	//ResultSet myResultSet = null;
	String mySQL,			MTMJavaScript = "";       
	//DbBean myDbBean = new DbBean();
	StringUtils stringUtils = new StringUtils();
    	int total_role_site = 0;
    	String variableNode="menu";

	
	

		OldNavigationTreeMenu dbTree;
		
		try {
			//myDbBean.connect();
		
			String user_id = stringUtils.decodeBase64(""
					+ ServletActionContext.getRequest().getSession()
					.getAttribute(LoginFilter.LOGIN_CIMANDE_USER));
	    	User us = new User();
	    	us = (User)pm.getById(User.class,user_id);
	    	this.roleId=us.getRole_id();
		   	this.siteId = (String)ServletActionContext.getRequest().getSession().getAttribute("GS_USER");
                // mySQL="SELECT DISTINCT module_function_id from module_function, role_privilage where module_function.id=role_privilage.module_function_id AND role_privilage.role_id='"+this.roleId+"' AND role_privilage.active_flag='1' AND module_function.active_flag='1' ORDER BY module_function.description";
                
                // check the role_site, 
				/*
				 */
		   	
				//mySQL = "SELECT COUNT(id) as total from role_site WHERE role_id='"+this.roleId+"' AND rsite_id='"+this.siteId+"'";
		   		mySQL = "SELECT COUNT(tmp.id) as total from " + RoleSite.class.getName() + " as tmp WHERE tmp.role.id='"+this.roleId+"' AND tmp.site.id='"+this.siteId+"'";
		   		List temp = new ArrayList();
		        temp = pm.getList(mySQL,null,null);
		        if(temp.size()>0){
		        	total_role_site = Integer.parseInt(temp.get(0).toString());
		        }
               /* myResultSet=myDbBean.execSQL(mySQL); 
                myResultSet.next();*/
		        
		        int iFirstNode=0;
                // Main menu. 
				MTMJavaScript = MTMJavaScript + "var menu = null;menu = new MTMenu();";
				
		        
                if (total_role_site<=0) {
                	System.out.println("Role Default Executed");
                	// read all module function from role_privilage
	                //mySQL = "SELECT DISTINCT module_function.id, module_function.description FROM module_function , role_privilage AS privilage, backend_user WHERE module_function.id=privilage.module_function_id AND privilage.privilage_flag='1' AND module_function.iparent='0' AND privilage.role_id=backend_user.role_id AND module_function.active_flag='1' AND privilage.role_id='"+this.roleId+"' ORDER BY module_function.description";                	
                    mySQL = "FROM tmp in " + RolePrivilage.class + " WHERE tmp.role.id='" + this.roleId + "' ORDER BY (tmp.moduleFunction.description)";
                    List<RolePrivilage> rp = new ArrayList<RolePrivilage>();
                    rp = (List<RolePrivilage>)pm.getList(mySQL,null,null);
                    for(RolePrivilage tmp : rp){
                    	
    					
    					dbTree = new OldNavigationTreeMenu(tmp.getModuleFunction().getId(),variableNode,iFirstNode,pm);
    			
    					MTMJavaScript = MTMJavaScript + variableNode+".MTMAddItem(new MTMenuItem(\"";
    					MTMJavaScript = MTMJavaScript + tmp.getModuleFunction().getDescription();
    					MTMJavaScript = MTMJavaScript + "\")); \n";					
    					
    					// check the child is > 0
    					MTMJavaScript = MTMJavaScript +  "var "+variableNode+"_"+iFirstNode+" = null;	"+variableNode+"_"+iFirstNode+" = new MTMenu();" + "\n";
    					MTMJavaScript = MTMJavaScript + dbTree.getMTMJavaScript();

    					MTMJavaScript = MTMJavaScript +  variableNode+".items["+iFirstNode+"].MTMakeSubmenu("+variableNode+"_"+iFirstNode+");\n\n" ;
    			
    		
    					iFirstNode++;
    				}
                } else {
                	// read all module funciton from role_site_privilage.
					System.out.println("Role Site Executed");
					//mySQL = "SELECT DISTINCT module_function.id, module_function.description FROM module_function , role_site, role_site_privilage AS privilage, backend_user WHERE module_function.id=privilage.module_function_id AND privilage.privilage_flag='1' AND module_function.iparent='0' AND role_site.role_id=backend_user.role_id AND module_function.active_flag='1' AND role_site.role_id='"+this.roleId+"' AND role_site.rsite_id='"+this.siteId+"' AND role_site.id=privilage.role_site_id ORDER BY module_function.description";
					mySQL = "FROM tmp in " + RoleSitePrivilage.class + " WHERE tmp.roleSite.site.id = '" + this.siteId + "' AND tmp.roleSite.role.id = '" + this.roleId + "' ORDER BY (tmp.moduleFunction.description)";
					List<RoleSitePrivilage> rsp = new ArrayList<RoleSitePrivilage>();
                    rsp = (List<RoleSitePrivilage>)pm.getList(mySQL,null,null);
                    for(RoleSitePrivilage tmp : rsp){
                    	
    					
    					dbTree = new OldNavigationTreeMenu(tmp.getModuleFunction().getId(),variableNode,iFirstNode,pm);
    			
    					MTMJavaScript = MTMJavaScript + variableNode+".MTMAddItem(new MTMenuItem(\"";
    					MTMJavaScript = MTMJavaScript + tmp.getModuleFunction().getDescription();
    					MTMJavaScript = MTMJavaScript + "\")); \n";					
    					
    					// check the child is > 0
    					MTMJavaScript = MTMJavaScript +  "var "+variableNode+"_"+iFirstNode+" = null;	"+variableNode+"_"+iFirstNode+" = new MTMenu();" + "\n";
    					MTMJavaScript = MTMJavaScript + dbTree.getMTMJavaScript();

    					MTMJavaScript = MTMJavaScript +  variableNode+".items["+iFirstNode+"].MTMakeSubmenu("+variableNode+"_"+iFirstNode+");\n\n" ;
    			
    		
    					iFirstNode++;
    				}
                }
                
                //myResultSet=myDbBean.execSQL(mySQL); 
                // move it to if clause
                /*
               for(ModuleFunction mf : modules){
                	
					
					dbTree = new OldNavigationTreeMenu(mf.getId(),variableNode,iFirstNode,pm);
			
					MTMJavaScript = MTMJavaScript + variableNode+".MTMAddItem(new MTMenuItem(\"";
					MTMJavaScript = MTMJavaScript + mf.getDescription();
					MTMJavaScript = MTMJavaScript + "\")); \n";					
					
					// check the child is > 0
					MTMJavaScript = MTMJavaScript +  "var "+variableNode+"_"+iFirstNode+" = null;	"+variableNode+"_"+iFirstNode+" = new MTMenu();" + "\n";
					MTMJavaScript = MTMJavaScript + dbTree.getMTMJavaScript();

					MTMJavaScript = MTMJavaScript +  variableNode+".items["+iFirstNode+"].MTMakeSubmenu("+variableNode+"_"+iFirstNode+");\n\n" ;
			
		
					iFirstNode++;
				}
					*/
				//	myDbBean.close();
				tree_script = MTMJavaScript;
	return SUCCESS;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ERROR;
    }
	public String getTree_script() {
		return tree_script;
	}
	public void setTree_script(String tree_script) {
		this.tree_script = tree_script;
	}
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
    
}

