/*
 * Created on Nov 11, 2003
 *
 * To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package com.atlassian.xwork.ext;

import javax.servlet.ServletContext;

/**
 * @author Ross
 *
 * For components that have a dependance on the Servlet context.
 */
public interface ServletContextAware {
	
	public void setServletContext(ServletContext context);

}
