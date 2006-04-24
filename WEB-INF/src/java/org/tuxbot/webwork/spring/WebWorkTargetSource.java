package org.tuxbot.webwork.spring;

/* Portions Copyright 2005 The JA-SIG Collaborative.  All rights reserved.
 *  See license distributed with this file and
 *  available online at http://www.uportal.org/license.html
 */

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.aop.target.AbstractPrototypeBasedTargetSource;
import org.springframework.beans.factory.DisposableBean;
import com.opensymphony.xwork.ActionContext;

import java.util.Map;

/**
 * This target source is to be used in collaberation with WebWork.
 * The target source binds the target bean to the Session retrieved from
 * WebWork. By default the bean is bound to the session
 * using the name of the target bean as part of the key. This can be overridden by setting
 * the <code>sessionKey</code> property to a not null value.
 *
 * @author Eric Dalquist <a href="mailto:edalquist@unicon.net">edalquist@unicon.net</a>
 * @author Eric Molitor <a href="mailto:eric@tuxbot.com">eric@tuxbot.com</a>
 * @version 1.0
 */
public class WebWorkTargetSource extends AbstractPrototypeBasedTargetSource implements DisposableBean {
    private final static Log LOG = LogFactory.getLog(WebWorkTargetSource.class);

    private transient Object noSessionInstance = null;
    private String sessionKey = null;
    private String compiledSessionKey = null;

    public WebWorkTargetSource() {
        this.updateBeanKey();
    }

    /**
     * @return Returns the sessionKey.
     */
    public String getSessionKey() {
        return this.sessionKey;
    }
    /**
     * @param sessionKey The sessionKey to set.
     */
    public void setSessionKey(String sessionKey) {
        this.sessionKey = sessionKey;
        this.updateBeanKey();
    }
    /**
     * @see org.springframework.aop.target.AbstractBeanFactoryBasedTargetSource#setTargetBeanName(java.lang.String)
     */
    public void setTargetBeanName(String targetBeanName) {
        super.setTargetBeanName(targetBeanName);
        this.updateBeanKey();
    }

    /**
     * @see org.springframework.aop.TargetSource#getTarget()
     */
    public Object getTarget() throws Exception {
        final Map session = ActionContext.getContext().getSession();

        if (session == null) {
            LOG.warn("No Session found for thread '" + Thread.currentThread().getName() + "'");

            if (this.noSessionInstance == null) {
                this.noSessionInstance = this.newPrototypeInstance();

                if (LOG.isDebugEnabled()) {
                    LOG.debug("Created instance of '" + this.getTargetBeanName() + "', not bound to any webWorkSession.");
                }
            }
            else {
                if (LOG.isDebugEnabled()) {
                    LOG.debug("Found instance of '" + this.getTargetBeanName() + "', not bound to any webWorkSession.");
                }
            }

            return this.noSessionInstance;
        }
        else {
            String beanKey = this.compiledSessionKey;

            Object instance = session.get(beanKey);
            if (instance == null) {
                instance = this.newPrototypeInstance();
                session.put(beanKey, instance);

                if (LOG.isDebugEnabled()) {
                    LOG.debug("Created instance of '" + this.getTargetBeanName() + "', bound to webWorkSession for '" 
                       + Thread.currentThread().getName() + "' using key '" + beanKey + "'.");
                }
            }
            else if (LOG.isDebugEnabled()) {
                LOG.debug("Found instance of '" + this.getTargetBeanName() + "', bound to webWorkSession for '" 
                       + Thread.currentThread().getName() + "' using key '" + beanKey + "'.");
            }

            return instance;
        }
    }

    /**
     * @see org.springframework.beans.factory.DisposableBean#destroy()
     */
    public void destroy() throws Exception {
        if (this.noSessionInstance != null && this.noSessionInstance instanceof DisposableBean) {
            if (LOG.isDebugEnabled()) {
                LOG.debug("Destroying sessionless bean instance '" + this.noSessionInstance + "'");
            }

            ((DisposableBean)this.noSessionInstance).destroy();
        }
    }

    /**
     * Generates the key to store the bean in the session with.
     */
    private void updateBeanKey() {
        if (this.sessionKey == null) {
            final StringBuffer buff = new StringBuffer();

            buff.append(this.getClass().getName());
            buff.append("_");
            buff.append(this.getTargetBeanName());

            this.compiledSessionKey = buff.toString();
        }
        else {
            this.compiledSessionKey = this.sessionKey;
        }
    }
}