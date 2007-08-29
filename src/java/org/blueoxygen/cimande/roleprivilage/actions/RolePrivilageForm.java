/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.roleprivilage.actions;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;

import com.opensymphony.xwork2.ActionSupport;


public class RolePrivilageForm extends ActionSupport implements PersistenceAware
{
	protected PersistenceManager persistenceManager;
	protected LogInformation logInfo;
	
 	private String url_xml="";
 	private int privilage_flag=-1;
 	private int activeFlag=-1;

	protected ModuleFunction moduleFunction;
 	private String module_function_id="";
	protected Role role;
 	private String role_id="";
	
	 
	public int getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(int active_flag) {
		this.activeFlag = active_flag;
	}
	public LogInformation getLogInfo() {
		return logInfo;
	}
	public void setLogInfo(LogInformation logInfo) {
		this.logInfo = logInfo;
	}
	public ModuleFunction getModuleFunction() {
		return moduleFunction;
	}
	public void setModuleFunction(ModuleFunction moduleFunction) {
		this.moduleFunction = moduleFunction;
	}
	public PersistenceManager getPersistenceManager() {
		return persistenceManager;
	}
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.persistenceManager = persistenceManager;
	}
	public int getPrivilage_flag() {
		return privilage_flag;
	}
	public void setPrivilage_flag(int privilage_flag) {
		this.privilage_flag = privilage_flag;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public String getUrl_xml() {
		return url_xml;
	}
	public void setUrl_xml(String url_xml) {
		this.url_xml = url_xml;
	}
	public String getModule_function_id() {
		return module_function_id;
	}
	public void setModule_function_id(String module_function_id) {
		this.module_function_id = module_function_id;
	}
	public String getRole_id() {
		return role_id;
	}
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	
	
}
