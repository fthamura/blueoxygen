/*
 * Created on Nov 11, 2003
 * 
 * To change the template for this generated file go to Window - Preferences -
 * Java - Code Generation - Code and Comments
 */
package com.atlassian.xwork.ext;

import javax.servlet.ServletContext;

import org.springframework.web.context.support.WebApplicationContextUtils;

/**
 * @author Ross
 * 
 * Extends the <code>SpringApplicationContextAwareResolver</code> to obtain the 
 * <code>ApplicationContext</code> from a ServletContext
 */
public class SpringServletContextReferenceResolver extends SpringApplicationContextReferenceResolver implements ServletContextAware {
	

	public void setServletContext(ServletContext servletContext) 
	{
		setApplicationContext(WebApplicationContextUtils.getWebApplicationContext(servletContext));
	}
}