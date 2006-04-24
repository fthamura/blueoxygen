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

import com.opensymphony.xwork.Action;
import com.opensymphony.xwork.ActionContext;

public class Logout implements Action, UserAccessorAware {
    private UserAccessor ua;

    public String execute() {
        //ActionContext.getContext().getSession().put(LoginFilter.LOGIN_KEY, null);
        //ActionContext.getContext().getSession().put(LoginFilter.LOGIN_USER, null);
        ActionContext.getContext().getSession().put(LoginFilter.LOGIN_CIMANDE_USER, null);
        return SUCCESS;
    }

    public void setUserAccessor(UserAccessor ua) {
        this.ua = ua;
    }
}
