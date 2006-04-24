/*
 * Created on Nov 12, 2003
 *
 * To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package com.atlassian.xwork.ext;

import org.springframework.context.ApplicationContext;

/**
 * @author Ross
 *
 * Specifies that a component needs a Spring ApplicationContext
 */
public interface SpringApplicationContextAware {
	
	public void setApplicationContext(ApplicationContext applicationContext);
}
