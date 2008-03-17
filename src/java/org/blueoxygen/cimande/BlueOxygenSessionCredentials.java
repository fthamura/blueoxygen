/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.util.StringUtils;

public class BlueOxygenSessionCredentials implements PersistenceAware {

 
	private PersistenceManager persistenceManager;

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.persistenceManager = persistenceManager;
	}
	public User getBackendUser() {
        String hashCode = (String )getSession().getAttribute("GA_USER");
        StringUtils stringUtils = new StringUtils();
        String memberId = stringUtils.decodeBase64(hashCode);
        User user = (User) persistenceManager.getByPrimaryKey(User.class, memberId );
        return user;
    }
    

	
    private HttpServletRequest getRequest() {
        return ServletActionContext.getRequest();
    }
    private HttpSession getSession() {
        return ServletActionContext.getRequest().getSession();
    }
}
