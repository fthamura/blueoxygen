/*
 * Created on Nov 19, 2003
 *
 * To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package com.atlassian.xwork.ext;

import java.util.Iterator;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.opensymphony.xwork.config.Configuration;
import com.opensymphony.xwork.config.ConfigurationManager;
import com.opensymphony.xwork.config.entities.PackageConfig;

/**
 * @author Ross
 *
 * A Sevrlet Context Listener that will loop through all Reference Resolvers available in
 * the xwork Configuration and set the ServletContext on those that are ServletContextAware.
 * The Servlet Context can be used by the External Reference Resolver to initialise it's state. i.e. the 
 * Spring framework uses a ContextServletListener to initialise it's IoC container, storing it's
 * container context (ApplicationContext in Spring terms) in the Servlet context, the External
 * Reference Resolver can get a reference to the container context from the servlet context.
 */
public class ResolverSetupServletContextListener implements ServletContextListener
{

    /* (non-Javadoc)
     * @see javax.servlet.ServletContextListener#contextDestroyed(javax.servlet.ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)
    {
        // noop

    }

    /* (non-Javadoc)
     * @see javax.servlet.ServletContextListener#contextInitialized(javax.servlet.ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent event)
    {
		Configuration config = ConfigurationManager.getConfiguration();
		String key;
		PackageConfig packageConfig;
        for(Iterator iter = config.getPackageConfigNames().iterator(); iter.hasNext(); )
        {
            key = (String)iter.next();
			packageConfig = config.getPackageConfig(key);
			if(packageConfig.getExternalRefResolver() instanceof ServletContextAware)
			{
			    ((ServletContextAware)packageConfig.getExternalRefResolver()).setServletContext(
			            event.getServletContext());
			}
            
        }

    }

}
