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

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/** Treemenu recursive function
 * This function will read the database module function and generate a linkedlist
 * The LinkedList will be use by NavigationTree to generate MTMScript
 * This function can be used to generate another tree (XSL or any function in the future)
 * @version   0.1
 * @author    <a href="mailto:frans@blueoxygen.org">Frans Thamura</a>
 */

public class YUINavTreeLeaf extends ActionSupport {

	private NavigationModuleFunction moduleFunction=null;
	private String rootId="";
	private String sId="";
	private String MTMJavaScript="",variableNode="";
	private int i, Node;
	private PersistenceManager pm;
	// default variable
	private String sTable = "module_function";

	ResultSet myResultSet = null;
	String mySQL;       

	/**
	 * Constructor:
	 * rootId = Root Id of the tree
	 * level = level of the tree, this will be use recursively, so the level must 0.
	 * recursiveList = your current LinkedList.
	 */

	/**
	 * Constructor for recursive only
	 */
	public YUINavTreeLeaf ( String rootId , String variableNode, int Node,PersistenceManager manager) throws ClassNotFoundException, Exception  {
		this.rootId = rootId;
		this.sId = rootId;
		this.moduleFunction = new NavigationModuleFunction(rootId,"");	
		this.Node=Node;
		this.variableNode=variableNode;
		this.pm = manager;
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
		/**
		 * modified in 24 july'06 using hibernate
		 */

		mySQL = "SELECT COUNT(mf.id) as total FROM "+ModuleFunction.class.getName()+" as mf WHERE mf.logInformation.activeFlag='1' AND mf.moduleFunction.id='"+this.sId+"' ORDER BY mf.description ASC";
		List temp = new ArrayList();
		temp = pm.getList(mySQL,null,null);
		if(temp.size()>0){
			totalFields = Integer.parseInt(temp.get(0).toString());
		}
		return totalFields;
	}
	/**
	 * return LinkedList that contains all downline in ordered level
	 */	

	public String getMTMJavaScript()throws ClassNotFoundException, SQLException, Exception {
		YUINavTreeLeaf dbTreeWalkerChild;

		NavigationModuleFunction dbTreeChild;

		String sParentId="";
		i=0;
		mySQL = "FROM mf in " + ModuleFunction.class + " WHERE mf.moduleFunction.id = '" + this.sId + "' ORDER BY(mf.description)";
		List<ModuleFunction> modules = new ArrayList<ModuleFunction>();
		modules = (List<ModuleFunction>)pm.getList(mySQL,null,null);
		for(ModuleFunction mf : modules) { 

			sParentId = mf.getId();

			// add to List
			dbTreeChild = new NavigationModuleFunction( sParentId,"");

			int totalChild ;
			dbTreeWalkerChild = new YUINavTreeLeaf(dbTreeChild.getId(),variableNode+"_"+Node,i,pm);

			totalChild = dbTreeWalkerChild.getChildCount();	

			// check the child after this object. if > 0 mean generate leaf descriptor
			if (totalChild>0) {
				MTMJavaScript = MTMJavaScript + "<div class=\"pkg\"><h3>"+mf.getDescription()+"</h3><div class=\"pkg-body\">"; //dbTreeChild.getDescription();
				MTMJavaScript = MTMJavaScript + dbTreeWalkerChild.getMTMJavaScript();
				MTMJavaScript = MTMJavaScript + "</div></div>";
			} else {
				String sActionFlag="", sUrlAction="";
				/* check the record in descriptor table
				 * if the action_flag = 1 means url_action
				 * else the node is url_descriptor value
				 */

				sActionFlag=String.valueOf(mf.getModuleDescriptor().getTypeFlag());

				if (sActionFlag.equals("1")) {
					sUrlAction = mf.getModuleDescriptor().getUrlAction()+"&";
				} else if (sActionFlag.equals("2")) {
					sUrlAction = "../module/"+mf.getModuleDescriptor().getName()+"/";
				} else if (sActionFlag.equals("3")){
					sUrlAction = "../module/window/genform.action?window.id="+mf.getModuleDescriptor().getWindow().getId()+"&";
				} else {
					sUrlAction = "../descriptor/"+mf.getModuleDescriptor().getUrlDescriptor()+"?";
				}

				// check the child after this object. if > 0 mean generate branch module

				MTMJavaScript = MTMJavaScript + "<div class=\"pkg\"><h3>" + mf.getDescription() + "</h3><div class=\"pkg-body\">"; //dbTreeChild.getDescription();

				// new action <a href="output/hello.html">New</a> 
				if (sActionFlag.equals("2")) {
					// - new_formula   	/{uri}/{new}.action
					MTMJavaScript = MTMJavaScript + "<a href=\""+sUrlAction+"create.action\">New</a>";
				} else {
					MTMJavaScript = MTMJavaScript + "<a href=\""+sUrlAction+"action=new\">New</a>";
				}

				// search action
				if (sActionFlag.equals("2")) {
					// - search_formula   	/{uri}/{new}.action
					MTMJavaScript = MTMJavaScript + "<a href=\""+sUrlAction+"filter.action\">Search</a>";
				} else {
					MTMJavaScript = MTMJavaScript + "<a href=\""+sUrlAction+"action=search\">Search</a>";
				}
				MTMJavaScript = MTMJavaScript + "</div></div>";
			}
			i++;
		}
		return MTMJavaScript;
	}
}