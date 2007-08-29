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

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;

public class LoginFilter implements Filter {
    public static String LOGIN_KEY = "loggedIn";
    public static String LOGIN_USER = "user";
    public static String LOGIN_CIMANDE_USER = "GA_USER";

    private Set extensions;
    private String loginAction;
    private String loginPage;

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String servletPath = req.getServletPath();
        
        String extension = servletPath.substring(servletPath.lastIndexOf('.') + 1).toLowerCase();
        
        /* Uri */
        String uri = req.getRequestURI();
        String contextPath = req.getContextPath();
        
        if (servletPath.equals(loginAction) || servletPath.equals(loginPage) || extensions.contains(extension)) {
            chain.doFilter(req, res);
            System.out.println("loginAction");
        } else if (req.getSession(true).getAttribute(LOGIN_CIMANDE_USER) == null) {
            System.out.println("redirecting");
            res.sendRedirect(contextPath + loginPage + "?redirectUri=" + uri);
            
            return;
        } else {
            chain.doFilter(req, res);
        }
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        loginPage = filterConfig.getInitParameter("loginPage");
        loginAction = filterConfig.getInitParameter("loginAction");

        extensions = new HashSet();

        String ignoreExtensions = filterConfig.getInitParameter("ignoreExtensions");
        StringTokenizer st = new StringTokenizer(ignoreExtensions, ", ");

        while (st.hasMoreTokens()) {
            extensions.add(st.nextToken().toLowerCase());
        }
    }

    public void destroy() {
    }
}
