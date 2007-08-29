/*
 * Created on Oct 26, 2005
 *
 * This file is a property of PT Francha Indomanakon
 * Any use or distribution of this file, in any form, source or
 * binary form is not allowed without written permittion from PT Francha Indomanakon.
 * 
 */
package org.blueoxygen.cimande.persistence.hibernate3;

import org.apache.log4j.Logger;
import org.hibernate.FlushMode;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

//import com.opensymphony.xwork.interceptor.component.Initializable;
//import com.opensymphony.xwork.interceptor.component.Disposable;

public class PersistenceManagerImpl implements HibernateSessionFactoryAware, PersistenceManager { //, Initializable, Disposable {
	
	public static final Logger logger = Logger.getLogger(PersistenceManagerImpl.class);

	private SessionFactory sessionFactory = null;
	private Session session = null;
	private Transaction transaction = null;
	private boolean rollback = false;
	private boolean commited = false;
	
	public void setHibernateSessionFactory(HibernateSessionFactory factory) {
		sessionFactory = factory.getSessionFactory();
	}

	public void begin() {
		try {
			transaction = session.beginTransaction();
			rollback = false;
			commited = false;
		} catch (HibernateException e) {
			logger.error("Could not begin transaction.", e);
			throw new ExceptionInInitializerError(e);
		}
	}

	public void commit() {
		if (transaction == null) {
			throw new RuntimeException("Transaction must be " +
					"started before it can " +
					"be committed!");
		}
		if (!commited) {
			try {
				session.flush();
				transaction.commit();
				commited = true;
			} catch (HibernateException e) {
				logger.error("Could not commit transaction. Rolling back.", e);
				rollback();
			}
			transaction = null;
		}
	}

	public Session getSession() {
		return session;
	}

	public void rollback() {
		if (transaction == null) {
			throw new RuntimeException("Transaction must be " +
			"started before it can " +
			"be rolled back!");
		}
		
		if (!commited) {
			try {
				transaction.rollback();
				rollback = true;
			} catch (HibernateException e) {
				logger.error("Could not roll transaction back.", e);
			}
		}
	}

	public void init() {
		try {
			session = sessionFactory.openSession();
			session.setFlushMode(FlushMode.NEVER);
			//session.setFlushMode(FlushMode.AUTO);
		} catch (HibernateException e) {
			logger.error("Could not open Hibernate session.", e);
			throw new ExceptionInInitializerError(e);
		}
	}

	public void dispose() {
		try {
			if (transaction != null) {
				commit();
			}
			session.close();
		} catch (HibernateException e) {
			logger.error("Could not close Hibernate session.");
		}
	}

	public boolean isCommited() {
		return commited;
	}

	public boolean isRollback() {
		return rollback;
	}
	
}
