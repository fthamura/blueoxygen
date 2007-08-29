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

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.blueoxygen.util.StringUtils;

/**
 * Encapsulates the specifics of looking up the current User in an HTTP
 * environment.
 */
public class HttpSessionCredentials implements SessionCredentials,
		UserAccessorAware {

	private UserAccessor userAccessor;

	public void setUserAccessor(UserAccessor userAccessor) {
		this.userAccessor = userAccessor;
	}

	public User getCurrentUser() {
		StringUtils stringUtils = new StringUtils();

		String remoteUser = getRequest().getRemoteUser();

		String userId = "";

		if (ServletActionContext.getRequest().getSession().getAttribute(
				LoginFilter.LOGIN_CIMANDE_USER) != null) {
			userId = stringUtils.decodeBase64(""
					+ ServletActionContext.getRequest().getSession()
							.getAttribute(LoginFilter.LOGIN_CIMANDE_USER));
		}

		if (userId.equalsIgnoreCase("")) {
			return null;
		} else {
			return userAccessor.getById(userId);
			//return null;
		}
	}

	private HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}
}