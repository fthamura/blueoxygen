/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.security;

import java.util.List;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceException;
import org.blueoxygen.cimande.persistence.PersistenceManager;
public class DefaultUserAccessor implements UserAccessor, PersistenceAware {
	private PersistenceManager pm;
	public boolean authenticate(String username, String password) {
		
		List users = pm.findUserbyName(username);
		
		User user = getUserName(username);

		if (user == null || !user.getPassword().equals(password)) {
			return false;
		} else {
			return true;
		}
	}
	public User getUser(String username) {
		try {
			return (User) pm.getByPrimaryKey(User.class, username);
		} catch (PersistenceException e) {
			return null;
		}
	}
	public User getUserName(String username) {
		try {
			List users = pm.findUserbyName(username);
			
			if (users.isEmpty()) {
				return null;
			} else {
				return (User) users.get(0);
			}
		} catch (PersistenceException e) {
			return null;
		}
	}
	public void signup(User user) {
		pm.save(user);
	}
	public void setPersistenceManager(PersistenceManager pm) {
		this.pm = pm;
	}

	public void update(User userEdited) {
		pm.save(userEdited);
		
	}
	public User getById(String userId) {
		
		return (User) pm.getById(User.class, userId);
	}
}
