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
import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.role.RolePrivilage;
import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.cimande.role.RoleSitePrivilage;
import org.blueoxygen.cimande.security.LoginFilter;
import org.blueoxygen.cimande.security.User;

/**
 * Cimande Workspace Explorer Tree to generate recursive infinite menu
 * 
 * @version 1.2
 * @author <a href="mailto:frans@blueoxygen.org">Frans Thamura</a>
 */
public class YUIExtNavTree extends CimandeAction {
	private String roleId = "";
	private String siteId = "";
	private String tree_script = "";

	/**
	 * This function will get all the strings from NavigationTreeMenu and
	 * generate a treemenu.com's menu in javascript format
	 * 
	 */
	public String execute() {

		String mySQL;
		String MTMJavaScript = "";
		int total_role_site = 0;
		String variableNode = "menu";

		YUINavTreeLeaf dbTree;

		try {
			User us = getCurrentUser();
			this.roleId = us.getRole().getId();
			this.siteId = (String) ServletActionContext.getRequest()
					.getSession().getAttribute(LoginFilter.LOGIN_CIMANDE_SITE);
			mySQL = "FROM " + RoleSite.class.getName()
					+ " tmp WHERE tmp.role.id='" + this.roleId
					+ "' AND tmp.site.id='" + this.siteId + "'";
			List<RoleSite> temp = new ArrayList<RoleSite>();
			temp = manager.getList(mySQL, null, null);
			total_role_site = temp.size();

			int iFirstNode = 0;
			// Main menu.
			/*
			 * This is the result <div class="pkg"><h3>Descriptor4</h3><div
			 * class="pkg-body"> <div class="pkg"><h3>Descriptor5</h3><div
			 * class="pkg-body"> <a href="output/hello.html">New</a> <a
			 * href="output/hello.html">Search</a> </div></div> </div></div>
			 * 
			 */
			if (total_role_site > 0) {
				// read all module function from role_site_privilage.

				mySQL = "FROM tmp in " + RoleSitePrivilage.class
						+ " WHERE tmp.roleSite.site.id = '" + this.siteId
						+ "' AND tmp.roleSite.role.id = '" + this.roleId
						+ "' ORDER BY (tmp.moduleFunction.description)";
				List<RoleSitePrivilage> rsp = new ArrayList<RoleSitePrivilage>();
				rsp = (List<RoleSitePrivilage>) manager.getList(mySQL, null,
						null);
				for (RoleSitePrivilage tmp : rsp) {

					dbTree = new YUINavTreeLeaf(
							tmp.getModuleFunction().getId(), variableNode,
							iFirstNode, manager);
					MTMJavaScript = MTMJavaScript + "<div class=\"pkg\"><h3>"
							+ tmp.getModuleFunction().getDescription()
							+ "</h3><div class=\"pkg-body\">";

					// check the child is > 0
					MTMJavaScript = MTMJavaScript + dbTree.getMTMJavaScript();
					MTMJavaScript = MTMJavaScript + "</div></div>";
					iFirstNode++;
				}
			} else {
				// read all module function from role_privilage
				mySQL = "FROM tmp in " + RolePrivilage.class
						+ " WHERE tmp.role.id='" + this.roleId
						+ "' ORDER BY (tmp.moduleFunction.description)";
				List<RolePrivilage> rp = new ArrayList<RolePrivilage>();
				rp = (List<RolePrivilage>) manager.getList(mySQL, null, null);
				for (RolePrivilage tmp : rp) {
					dbTree = new YUINavTreeLeaf(
							tmp.getModuleFunction().getId(), variableNode,
							iFirstNode, manager);

					MTMJavaScript = MTMJavaScript + "<div class=\"pkg\"><h3>"
							+ tmp.getModuleFunction().getDescription()
							+ "</h3><div class=\"pkg-body\">";
					// check the child is > 0
					MTMJavaScript = MTMJavaScript + dbTree.getMTMJavaScript();
					MTMJavaScript = MTMJavaScript + "</div></div>";
				}
			}
			tree_script = MTMJavaScript;
			return SUCCESS;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
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
}
