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

import org.blueoxygen.backoffice.account.Login;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.util.StringUtils;

import com.opensymphony.webwork.ServletActionContext;

public class BlueOxygenSessionCredentials implements PersistenceAware {

 
	private PersistenceManager persistenceManager;

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.persistenceManager = persistenceManager;
	}
	public BackendUser getBackendUser() {
        String hashCode = (String )getSession().getAttribute("GA_USER");
        StringUtils stringUtils = new StringUtils();
        String memberId = stringUtils.decodeBase64(hashCode);
        BackendUser user = (BackendUser) persistenceManager.getByPrimaryKey(BackendUser.class, memberId );
        return user;
    }
    
	public Login getLogin(){
		String hashCode = (String ) getSession().getAttribute("GA_USER");
		
        Login login = new Login();
		try {
			login =  new Login(hashCode);
		} catch (ClassNotFoundException e) {
			// 
			e.printStackTrace();
		} catch (SQLException e) {
			// 
			e.printStackTrace();
		} catch (Exception e) {
			// 
			e.printStackTrace();
		}
		return login;
	}
	
    private HttpServletRequest getRequest() {
        return ServletActionContext.getRequest();
    }
    private HttpSession getSession() {
        return ServletActionContext.getRequest().getSession();
    }
}
