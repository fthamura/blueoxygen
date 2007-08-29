/*
 * Created on Oct 26, 2005
 *
 * This file is a property of PT Francha Indomanakon
 * Any use or distribution of this file, in any form, source or
 * binary form is not allowed without written permittion from PT Francha Indomanakon.
 * 
 */
package org.blueoxygen.cimande.persistence.hibernate3;

import org.hibernate.*;
import org.hibernate.cfg.*;
/**
 * Used to summon hibernate's session. 
 * The session will be used to do database transactions.
 * 
 * @author ferdi
 */
public class HibernateUtil {
	
	private static final SessionFactory sessionFactory;

    static {
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            // Log exception!
            throw new ExceptionInInitializerError(ex);
        }
    }

    /**
     * Get the session of hibernate connection. For web base application, the entire request must be handled
     * using single session. When a request finished being processed and a respond is about to be sent, 
     * session must be close.
     * 
     * @return Hibernate Session used for database operation.
     * @throws HibernateException If something gets wrong.
     */
    public static Session getSession()
            throws HibernateException {
        return sessionFactory.openSession();
    }
    
    
}
