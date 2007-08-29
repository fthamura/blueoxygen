/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.persistence.hibernate;

import java.sql.SQLException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.blueoxygen.cimande.persistence.PersistenceException;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaUpdate;

//import com.opensymphony.xwork.interceptor.component.Initializable;

/**
 * The default implementation of HibernateSessionFactory. It uses Hibernate's built-in connection pooling mechanism.
 */
public class DefaultHibernateSessionFactory implements HibernateSessionFactory { //, Initializable

    private SessionFactory sessionFactory;

    private Log log = LogFactory.getLog(DefaultHibernateSessionFactory.class);

    public void init() {
        //first request, create a sessionFactory and use it afterwards
        //for creating all sessions
        if (sessionFactory == null) {
            try {
                sessionFactory = buildSessionFactory();
            } catch (HibernateException e) {
                log.fatal("Couldn't init HibernatePersistenceManager", e);
                throw new PersistenceException("Couldn't init DefaultHibernateSessionFactory",
                        e);
            }
        }
    }

    public void destroy() {
        try {
            sessionFactory.close();
        } catch (HibernateException e) {
            throw new RuntimeException("Cannot close hibernate session", e);
        }
        sessionFactory = null;
    }

    public Session createSession() throws HibernateException {
        return sessionFactory.openSession();
    }

    /**
     * This implementation commits the connection too. Another implementation using a JTA connection should not commit
     * the connection itself.
     */
    public void endSession(Session session)
            throws SQLException, HibernateException {
        if ((session != null) && session.isOpen() && session.isConnected()) {
            session.flush();
            //session.connection().commit();
        }
    }

    public void closeSession(Session session)
            throws SQLException, HibernateException {
        if ((session != null) && session.isOpen() && session.isConnected()) {
            session.close();
        }
    }

    private SessionFactory buildSessionFactory() throws HibernateException {
        Configuration config = new Configuration();
        config.configure();

        if (System.getProperty("hibernate.connect.url.override") != null)
        {
            config.setProperty("hibernate.connection.url", System.getProperty("hibernate.connect.url.override"));
            config.setProperty("hibernate.connection.username", "sa");
            config.setProperty("hibernate.connection.password", "");
            config.setProperty("hibernate.dialect", "net.sf.hibernate.dialect.HSQLDialect");
        }
        // update database schema if required
        try {
            new SchemaUpdate(config).execute(false,false);
        } catch (HibernateException e) {
            log.fatal("Cannot update schema", e);
            throw new PersistenceException("Cannot update schema", e);
        }
        SessionFactory result = config.buildSessionFactory();
        return result;
    }

	/**
	 * @return Returns the sessionFactory.
	 */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	/**
	 * @param sessionFactory The sessionFactory to set.
	 */
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
}
