/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.site.actions;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.site.Site;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author Umar Khatab umar@intercitra.com
 */
public class ViewSite extends ActionSupport implements PersistenceAware {

	protected PersistenceManager pm;
	protected Site site;
	private String id = "";

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;

	}

	public String execute() {
		if (!id.equalsIgnoreCase(""))
		{
			site = (Site) pm.getById(Site.class, getId());
			return SUCCESS;
		}
		else
		{
			addActionError("Site not found");
			return ERROR;
		}
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public Site getSite() {
		return site;
	}

	public String getId() {
		return id;
	}

	public void setSite(Site site) {
		this.site = site;
	}
	
}