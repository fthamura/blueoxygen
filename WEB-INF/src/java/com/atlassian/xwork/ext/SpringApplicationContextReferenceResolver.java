/*
 * Created on Nov 12, 2003
 * 
 * To change the template for this generated file go to Window - Preferences - Java - Code
 * Generation - Code and Comments
 */
package com.atlassian.xwork.ext;

import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import ognl.Ognl;

import org.springframework.beans.factory.NoSuchBeanDefinitionException;
import org.springframework.context.ApplicationContext;

import com.opensymphony.xwork.ActionInvocation;
import com.opensymphony.xwork.config.ExternalReferenceResolver;
import com.opensymphony.xwork.config.ReferenceResolverException;
import com.opensymphony.xwork.config.entities.ExternalReference;
import com.opensymphony.xwork.util.OgnlUtil;

/**
 * @author Ross
 * 
 * Resolves an xwork external-ref references to a component available from Spring application
 * context
 */
public class SpringApplicationContextReferenceResolver
    implements ExternalReferenceResolver, SpringApplicationContextAware
{

    protected ApplicationContext applicationContext;

    public void setApplicationContext(ApplicationContext applicationContext)
    {
        this.applicationContext = applicationContext;
    }

    public void resolveReferences(ActionInvocation invocation) throws ReferenceResolverException
    {
        if (applicationContext == null)
        {
            throw new IllegalStateException("The application context has not been set on this resolver");
        }
        //TODO see if we can pass a bean to the Spring IoC to populate
        // attributes
        //Haven't found a way yet so I'll do it manually for now
        List externalRefs = invocation.getProxy().getConfig().getExternalRefs();
        Object bean;
        ExternalReference reference;

        for (Iterator iter = externalRefs.iterator(); iter.hasNext();)
        {
            reference = (ExternalReference) iter.next();
            //IF the reference name is null we can can try and look up the
            // reference based on the type
            if (reference.getExternalRef() == null)
            {
                Class[] types = getParameterTypes(invocation.getAction(), reference.getName());
                if (types == null || types.length == 0 || types.length > 1)
                {
                    throw new ReferenceResolverException(
                        "Unable to find a method on the action called "
                            + reference.getName()
                            + " that takes a single parameter");
                }
                else
                {
                    //String names[] = applicationContext.getBeanDefinitionNames(types[0]);
                	String names[] = applicationContext.getBeanDefinitionNames();
                    if (names == null || names.length == 0 || names.length > 1)
                    {
                        throw new ReferenceResolverException(
                            "The container is unable to resolve single instance of " + types[0]);
                    }
                    else
                    {
                        reference.setExternalRef(names[0]);
                    }
                }
            }

            try
            {

                bean = applicationContext.getBean(reference.getExternalRef());
            }
            catch (NoSuchBeanDefinitionException e)
            {

                if (reference.isRequired())
                {
                    //if a dependacy is required but wasn't found throw an
                    // exception
                    throw new ReferenceResolverException(
                        "Failed to find external reference: " + reference.getExternalRef(),
                        e);
                }
                else
                {
                    return;
                }
            }

            try
            {
                Map context = Ognl.createDefaultContext(invocation.getAction());
                OgnlUtil.setProperty(reference.getName(), bean, invocation.getAction(), context);
            }
            catch (Exception e)
            {
                throw new ReferenceResolverException(
                    "Failed to set external reference: "
                        + reference.getExternalRef()
                        + " for bean attribute: "
                        + reference.getName()
                        + ". "
                        + e.getMessage(),
                    e);
            }
        }
    }

    //TODO find a utility class that does this or put it in a utility class
    //TODO We will also want to cache this info somewhere so we dont execute
    // each time
    //a request is made
    private Class[] getParameterTypes(Object bean, String methodName)
    {
        if(!methodName.startsWith("set")) {
            methodName = "set" + methodName.substring(0, 1).toUpperCase() + methodName.substring(1);
        }
        Method methods[] = bean.getClass().getMethods();

        for (int i = 0; i < methods.length; i++)
        {
            if (methods[i].getName().equals(methodName))
            {
                return methods[i].getParameterTypes();
            }
        }
        return null;
    }
}