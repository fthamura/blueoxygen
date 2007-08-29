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

import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Agustono Heriadi dark_ilussion@yahoo.com
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class ListRole extends ActionSupport implements PersistenceAware 
{
	private PersistenceManager persistenceManager;
	
	private List roles;
	private String orderBy="name";
	private String direction="asc";
	
	public String execute() throws Exception {
		
		roles = persistenceManager.findAllSortedDirected(Role.class, getOrderBy(), getDirection());
		
		return SUCCESS;
	}
	
	

	/**
	 * @return Returns the direction.
	 */
	public String getDirection() {
		return direction;
	}
	/**
	 * @param direction The direction to set.
	 */
	public void setDirection(String direction) {
		this.direction = direction;
	}
	/**
	 * @return Returns the orderBy.
	 */
	public String getOrderBy() {
		return orderBy;
	}
	/**
	 * @param orderBy The orderBy to set.
	 */
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
	/**
	 * @param persistenceManager The persistenceManager to set.
	 */
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.persistenceManager = persistenceManager;
	}
	/**
	 * @return Returns the roles.
	 */
	public List getRoles() {
		return roles;
	}
	/**
	 * @param roles The roles to set.
	 */
	public void setRoles(List workflows) {
		this.roles = workflows;
	}
}
