/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.role.actions;


import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Frans Thamura frans@blueoxygen.org
 */
public class RoleForm extends CimandeAction implements PersistenceAware
{
	protected PersistenceManager pm;
	protected ModuleFunction moduleFunction;
	protected Role role;
	private String id;
	private String name="";
	private String description="";
	private String siteId="";
	private String parentId="";
	private String workspace_type="";
	private int activeFlag=-1; //dummy status, means unstated
	

	/**
	 * @return Returns the description.
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description The description to set.
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}
	/**
	 * @param id The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * @return Returns the name.
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name The name to set.
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return Returns the persistenceManager.
	 */
	public PersistenceManager getPersistenceManager() {
		return pm;
	}
	
	/**
	 * @return Returns the activeFlag.
	 */
	public int getActiveFlag() {
		return activeFlag;
	}
	/**
	 * @param activeFlag The activeFlag to set.
	 */
	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}
	/**
	 * @return Returns the parentId.
	 */
	public String getParentId() {
		return parentId;
	}
	/**
	 * @param parentId The parentId to set.
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	/**
	 * @return Returns the moduleFunction.
	 */
	public ModuleFunction getModuleFunction() {
		return moduleFunction;
	}
	/**
	 * @param moduleFunction The moduleFunction to set.
	 */
	public void setModuleFunction(ModuleFunction moduleFunction) {
		this.moduleFunction = moduleFunction;
	}
	/**
	 * @return Returns the role.
	 */
	public Role getRole() {
		return role;
	}
	/**
	 * @param role The role to set.
	 */
	public void setRole(Role role) {
		this.role = role;
	}
	/* (non-Javadoc)
	 * @see org.blueoxygen.cimande.persistence.PersistenceAware#setPersistenceManager(org.blueoxygen.cimande.persistence.PersistenceManager)
	 */
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
	public String getWorkspace_type() {
		return workspace_type;
	}
	public void setWorkspace_type(String workspace_type) {
		this.workspace_type = workspace_type;
	}
	
}
