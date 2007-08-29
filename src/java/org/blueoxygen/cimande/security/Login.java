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

import java.io.IOException;

import org.apache.struts2.ServletActionContext;
import org.blueoxygen.util.DesEncrypter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport implements UserAccessorAware {
    private UserAccessor ua;
    private String username;
    private String password;
    private String redirectUri;

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String execute() {
    	if (ua.authenticate(username, DesEncrypter.NAGASAKTI.encrypt(password))) {
    		
        	LOG.info("login successful ");
        	LOG.info("redirectUri  : " +  redirectUri);
            
            //ActionContext.getContext().getSession().put(LoginFilter.LOGIN_KEY, username);
            //ActionContext.getContext().getSession().put(LoginFilter.LOGIN_USER, ua.getUserName(username));
            ActionContext.getContext().getSession().put(LoginFilter.LOGIN_CIMANDE_USER, ua.getUserName(username).getId());
            
            /* Redirect */
            if ( ( redirectUri != null ) && ( redirectUri.length(  ) > 0 ) )
            {
                try {
                	
					ServletActionContext.getResponse().sendRedirect(redirectUri );
				} catch (IOException e) {
					e.printStackTrace();
					//return INPUT;
				}
                return NONE;
            }
            /* Normal flow */
            return SUCCESS;
        } else {
            addFieldError("username", "Invalid username or password - please retry.");
            return ERROR;
        }
    }

    public void setUserAccessor(UserAccessor ua) {
        this.ua = ua;
    }
	/**
	 * @param redirectUri The redirectUri to set.
	 */
	public void setRedirectUri(String redirectUri) {
		this.redirectUri = redirectUri;
	}
}