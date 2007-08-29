/*
 * Created on Oct 26, 2005
 *
 * This file is a property of PT Francha Indomanakon
 * Any use or distribution of this file, in any form, source or
 * binary form is not allowed without written permittion from PT Francha Indomanakon.
 * 
 */
package org.blueoxygen.cimande.persistence.hibernate3;

//import com.opensymphony.xwork.interceptor.component.Initializable;
//import com.opensymphony.xwork.interceptor.component.Disposable;

import org.apache.log4j.*;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class HibernateSessionFactoryImpl implements HibernateSessionFactory { //, Initializable, Disposable {

	public static final Logger logger = Logger.getLogger(HibernateSessionFactoryImpl.class);
	
	SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void init() {
		try {
			logger.debug("Building Hibernate Session Factory");
			sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
		} catch (Throwable e) {
			logger.error("Building SessionFactory failed.", e);
			throw new ExceptionInInitializerError(e);
		}
	}

	public void dispose() {
		try {
			logger.debug("Disposing Hibernate Session Factory");
			sessionFactory.close();
		} catch (HibernateException e) {
			logger.error("Closing SessionFactory failed.", e);
		}
	}

}
