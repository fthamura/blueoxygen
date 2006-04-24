/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.security;

import com.opensymphony.xwork.ActionSupport;
import com.opensymphony.xwork.ModelDriven;

public class Signup extends ActionSupport implements ModelDriven, UserAccessorAware {
    private User user = new User();
    private String verifyPassword;
    private UserAccessor ua;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getVerifyPassword() {
        return verifyPassword;
    }

    public void setVerifyPassword(String verifyPassword) {
        this.verifyPassword = verifyPassword;
    }

    public Object getModel() {
        return user;
    }

    public void setUserAccessor(UserAccessor ua) {
        this.ua = ua;
    }

    public String execute() {
        if (ua.getUser(user.getUsername()) == null) {
            ua.signup(user);
            return SUCCESS;
        } else {
            addFieldError("username", "Username is already taken, please choose another");
            return ERROR;
        }
    }
}
