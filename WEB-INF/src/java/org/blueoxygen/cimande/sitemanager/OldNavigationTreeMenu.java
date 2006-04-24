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

/**
 * $RCSfile: OldNavigationTreeMenu.java,v $
 * $Revision: 1.1 $
 * $Date: 2005/04/15 06:05:32 $
 *
 * Copyright (C) 2002 Intecitra.com. All rights reserved.
 *
 * This software is the proprietary information of Thentra Gray Enterprise.
 * Use is subject to license terms.
 */

import org.blueoxygen.dal.DbBean;
import org.blueoxygen.cimande.sitemanager.NavigationModuleFunction;
import java.util.*;
import java.sql.*;

/** Treemenu recursive function
 * This function will read the database module function and generate a linkedlist
 * The LinkedList will be use by NavigationTree to generate MTMScript
 * This function can be used to generate another tree (XSL or any function in the future)
 * @version   0.1
 * @author    <a href="mailto:frans@blueoxygen.org">Frans Thamura</a>
 */
 
public class OldNavigationTreeMenu{
	
	private NavigationModuleFunction moduleFunction=null;
	private String rootId="";
	private int recursiveChildCount=0;
	private String sId="";
	private int level=0;
	private LinkedList recursiveList, levelList;
	private String MTMJavaScript="",variableNode="";
	private int i, Node;
	
	// default variable
	private String sTable = "module_function";
	
	ResultSet myResultSet = null;
	String mySQL;       
	DbBean myDbBean = new DbBean();
	
	
	/**
	 * Constructor:
	 * rootId = Root Id of the tree
	 * level = level of the tree, this will be use recursively, so the level must 0.
	 * recursiveList = your current LinkedList.
	 */
		
	/**
	 * Constructor for recursive only
	 */

	public OldNavigationTreeMenu ( String rootId , String variableNode, int Node) throws ClassNotFoundException, Exception  {
		
		this.rootId = rootId;
		this.sId = rootId;
		this.moduleFunction = new NavigationModuleFunction(rootId,"");	
		this.Node=Node;
		this.variableNode=variableNode;
		
	}
		
	/**
	  * return root id
	  */
	
	public String getRootId()  {

		return this.rootId;

	}
	
	
	/**
	  * return level value of this object
	  * return a DbModule Object
	  */
	public NavigationModuleFunction getRoot() {

		return 	this.moduleFunction;

	}
	
	/**
	 * return LinkedList that contains all downline in ordered level
	 */	
	
	public int getChildCount()throws ClassNotFoundException, SQLException, Exception {
		int totalFields=0;
		myDbBean.connect();
                mySQL = "SELECT COUNT(*) as total FROM "+sTable+" WHERE active_flag='1' AND iparent='"+this.sId+"' ORDER BY description ASC ";
                myResultSet=myDbBean.execSQL(mySQL); 
                myResultSet.next();
                totalFields=myResultSet.getInt("total");
        myDbBean.close();
	return totalFields;
	}
	/**
	 * return LinkedList that contains all downline in ordered level
	 */	
	
	public String getMTMJavaScript()throws ClassNotFoundException, SQLException, Exception {
		OldNavigationTreeMenu dbTreeWalkerChild;
		
		Iterator iterChild;
		int levelChild;
		NavigationModuleFunction dbTreeChild, dbTreeChildIterator;
		
		// query level 1, all downline of memberId;
		myDbBean.connect();
                // mySQL = "SELECT * FROM "+sTable+" WHERE iparent='"+this.sId+"' ORDER BY description ASC ";
				mySQL="SELECT DISTINCT module_function.description as module_description, module_function.ref_desc, module_function.id,descriptor.url_descriptor, descriptor.type_flag, descriptor.url_action, descriptor.active_flag, descriptor.description, descriptor.name, module_function.viewall_flag FROM module_function, descriptor WHERE module_function.descriptor_id=descriptor.id AND descriptor.active_flag='1' AND iparent='"+this.sId+ "' ORDER BY descriptor.description" ;

                myResultSet=myDbBean.execSQL(mySQL); 
	        String sParentId="";
			i=0;

	        while (myResultSet.next()) 
	        { 
	        	
	        	
			sParentId = myResultSet.getString("id");
			
			// add to List
			dbTreeChild = new NavigationModuleFunction( sParentId,"");
			
			MTMJavaScript = MTMJavaScript + variableNode+"_"+Node+".MTMAddItem(new MTMenuItem(\"";
			int totalChild ;
			dbTreeWalkerChild = new OldNavigationTreeMenu(dbTreeChild.getId(),variableNode+"_"+Node,i);

			totalChild = dbTreeWalkerChild.getChildCount();	
			
			// check the child after this object. if > 0 mean generate leaf descriptor
			if (totalChild>0) {
				MTMJavaScript = MTMJavaScript + myResultSet.getString("module_description") + "\"));" + "\n";; //dbTreeChild.getDescription();
				MTMJavaScript = MTMJavaScript + "\n" + "var "+variableNode+"_"+Node+"_"+i+" = null;	"+variableNode+"_"+Node+"_"+i+" = new MTMenu();" + "\n";
				MTMJavaScript = MTMJavaScript + dbTreeWalkerChild.getMTMJavaScript() + "\n";
				MTMJavaScript = MTMJavaScript + variableNode+"_"+Node+".items["+i+"].MTMakeSubmenu("+variableNode+"_"+Node+"_"+i+");" + "\n";
	        } else {
	        	String sActionFlag="", sUrlAction="";
	        	/* check the record in descriptor table
				 * if the action_flag = 1 means url_action
				 * else the node is url_descriptor value
				 */
				
				sActionFlag=myResultSet.getString("type_flag");
								
				if (sActionFlag.equals("1")) {
					sUrlAction = myResultSet.getString("url_action")+"&";
				} else if (sActionFlag.equals("2")) {
					sUrlAction = "../module/"+myResultSet.getString("name")+"/";
					
					System.out.println("Action 2");
				} else {
					sUrlAction = "../descriptor/"+myResultSet.getString("url_descriptor")+"?";				}
				
	        	
	        	// check the child after this object. if > 0 mean generate branch module
				MTMJavaScript = MTMJavaScript + myResultSet.getString("description") +"\"));" + "\n";; //dbTreeChild.getDescription();
	        	MTMJavaScript = MTMJavaScript + "\n" + "var "+variableNode+"_"+Node+"_"+i+" = null;	"+variableNode+"_"+Node+"_"+i+" = new MTMenu();" + "\n";
				
				
				// new action
				MTMJavaScript = MTMJavaScript + variableNode+"_"+Node+"_"+i+".MTMAddItem(new MTMenuItem(\"";
				MTMJavaScript = MTMJavaScript + "New";
				if (sActionFlag.equals("2")) {
					// - new_formula   	/{uri}/{new}.action
					MTMJavaScript = MTMJavaScript + "\",\""+sUrlAction+"create.action\",\"text\"));" + "\n";
				} else {
					MTMJavaScript = MTMJavaScript + "\",\""+sUrlAction+"action=new\",\"text\"));" + "\n";
				}
				MTMJavaScript = MTMJavaScript + variableNode+"_"+Node+"_"+i+".MTMAddItem(new MTMenuItem(\"";
				
				// search action
				MTMJavaScript = MTMJavaScript + "Search";
				if (sActionFlag.equals("2")) {
					// - search_formula   	/{uri}/{new}.action
					MTMJavaScript = MTMJavaScript + "\",\""+sUrlAction+"filter.action\",\"text\"));" + "\n";
				} else {
					MTMJavaScript = MTMJavaScript + "\",\""+sUrlAction+"action=search\",\"text\"));" + "\n";
				}
				MTMJavaScript = MTMJavaScript + variableNode+"_"+Node+".items["+i+"].MTMakeSubmenu("+variableNode+"_"+Node+"_"+i+");" + "\n";
			}
	   	
			i++;
			
		}
		
		myDbBean.close();
		return MTMJavaScript;
	}
	
	
	
}