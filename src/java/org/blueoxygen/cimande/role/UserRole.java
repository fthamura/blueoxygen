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

import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.security.User;

/**
 * @author frans
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 * @hibernate.class table="user_role"
 */
public class UserRole extends DefaultPersistent {
	
	private User user = new User();
	private Role role = new Role();
	private boolean defaultRole;
	
	/**
	 * @return Returns the defaultRole.
	 * @hibernate.property type="yes_no"
	 */
	public boolean getDefaultRole() {
		return defaultRole;
	}
	/**
	 * @param defaultRole The defaultRole to set.
	 */
	public void setDefaultRole(boolean defaultRole) {
		this.defaultRole = defaultRole;
	}

	/**
	 * @return Returns the role.
	 * @hibernate.many-to-one column="role_id"
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
	/**
	 * @return Returns the user.
	 * @hibernate.many-to-one column="user_id"
	 */
	public User getUser() {
		return user;
	}
	/**
	 * @param user The user to set.
	 */
	public void setUser(User user) {
		this.user = user;
	}
	
	public boolean isDefaultRole() {
		
	 return (defaultRole == true);
	}
}
