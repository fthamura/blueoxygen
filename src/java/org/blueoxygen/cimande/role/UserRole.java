/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.role;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.security.User;
import org.hibernate.annotations.Type;

/**
 * @author frans
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 * @hibernate.class table="user_role"
 */
@Entity()
@Table(name="user_role")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class UserRole extends DefaultPersistence {
	
	private User user = new User();
	private Role role = new Role();
	private boolean defaultRole;
	
	/**
	 * @return Returns the role.
	 * @hibernate.many-to-one column="role_id"
	 */
	@ManyToOne
	@JoinColumn(name="role_id")
	public Role getRole() {
		return role;
	}
	/**
	 * @param role The role to set.
	 */
	public void setRole(Role role) {
		this.role = role;
	}
	/**
	 * @return Returns the user.
	 * @hibernate.many-to-one column="user_id"
	 */
	@ManyToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}
	/**
	 * @param user The user to set.
	 */
	public void setUser(User user) {
		this.user = user;
	}
	
	@Transient
	public boolean isDefaultRole() {
		
	 return (defaultRole == true);
	}
}
