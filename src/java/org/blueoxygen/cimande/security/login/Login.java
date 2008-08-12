/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.security.login;

import org.blueoxygen.cimande.security.LoginFilter;
import org.blueoxygen.cimande.security.UserAccessorAware;

import com.opensymphony.xwork2.ActionContext;

public class Login extends LoginForm implements UserAccessorAware {
    
    public String execute() {
    	if (ua.authenticate(getUsername(), getPassword())) {
    		setUser(ua.getByUsername(getUsername()));
//        	LOG.info("login successful: " + getUser().getUsername());
//        	LOG.info("redirectUri  : " +  getRedirectUri());
            
            ActionContext.getContext().getSession().put(LoginFilter.LOGIN_CIMANDE_USER, su.encodeBase64(getUser().getId()));
            
            /* Normal flow */
            return SUCCESS;
        } else {
            addFieldError("username", "Invalid username or password");
            return INPUT;
        }
    }

    
}