/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.security.usermanager;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.cimande.site.Site;

/**
 * @author frans
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 * @hibernate.class table="user_role"
 */

@Entity()
@Table(name="user_site")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class UserSite extends DefaultPersistent {
	
	private User user = new User();
	private Site site = new Site();
	
	@ManyToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@ManyToOne
	@JoinColumn(name="user_site_id")
	public Site getSite() {
		return site;
	}
	public void setSite(Site site) {
		this.site = site;
	}
	
	
	}
	
