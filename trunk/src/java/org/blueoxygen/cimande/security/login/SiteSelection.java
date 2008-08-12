package org.blueoxygen.cimande.security.login;

import org.blueoxygen.cimande.security.LoginFilter;

import com.opensymphony.xwork2.ActionContext;

public class SiteSelection extends LoginForm {
	public String execute(){
		if(getSite().getId() != null || !"".equalsIgnoreCase(getSite().getId())){
			ActionContext.getContext().getSession().put(LoginFilter.LOGIN_CIMANDE_SITE, getSite().getId());
		} else {
			return INPUT;
		}
        if(getRedirectUri() != null || !"".equalsIgnoreCase(getRedirectUri())){
			return "redirect";
		}
        /* Normal flow */
		return SUCCESS;
	}
}
