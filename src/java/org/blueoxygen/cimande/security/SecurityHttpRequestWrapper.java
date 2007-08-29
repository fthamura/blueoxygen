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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import java.security.Principal;

public class SecurityHttpRequestWrapper extends HttpServletRequestWrapper {
    private HttpServletRequest request;

    public SecurityHttpRequestWrapper(HttpServletRequest request) {
        super(request);
        this.request = request;
    }

    public String getRemoteUser() {
        String user = (String) request.getSession().getAttribute(LoginFilter.LOGIN_KEY);
        return user;
    }

    public Principal getUserPrincipal() {
        final String name = getRemoteUser();

        return new Principal() {
            public String getName() {
                return name;
            }
        };
    }
}
