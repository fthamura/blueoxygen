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

import java.io.Serializable;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.blueoxygen.cimande.persistence.PersistenceException;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.User;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.ObjectDeletedException;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.type.Type;

import com.opensymphony.xwork.interceptor.component.Disposable;
import com.opensymphony.xwork.interceptor.component.Initializable;

public class HibernatePersistenceManager implements PersistenceManager, HibernateSessionFactoryAware, Initializable, Disposable {

    private static Map classToHibernateTypeMap = new HashMap();

    static {
        classToHibernateTypeMap.put(Boolean.class, Hibernate.BIG_DECIMAL);
        classToHibernateTypeMap.put(Boolean.class, Hibernate.BOOLEAN);
        classToHibernateTypeMap.put(Byte.class, Hibernate.BYTE);
        classToHibernateTypeMap.put(Character.class, Hibernate.CHARACTER);
        classToHibernateTypeMap.put(Date.class, Hibernate.DATE);
        classToHibernateTypeMap.put(Double.class, Hibernate.DOUBLE);
        classToHibernateTypeMap.put(Float.class, Hibernate.FLOAT);
        classToHibernateTypeMap.put(Integer.class, Hibernate.INTEGER);
        classToHibernateTypeMap.put(Long.class, Hibernate.LONG);
        classToHibernateTypeMap.put(Short.class, Hibernate.SHORT);
        classToHibernateTypeMap.put(String.class, Hibernate.STRING);
        classToHibernateTypeMap.put(Timestamp.class, Hibernate.TIMESTAMP);
    }

    private HibernateSessionFactory hibernateSessionFactory;
    private Session session;

    public Session getSession() {
        return session;
    }

    public HibernateSessionFactory getHibernateSessionFactory() {
        return hibernateSessionFactory;
    }

    public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
        this.hibernateSessionFactory = hsf;
    }

    public void init() {
        try {
            session = hibernateSessionFactory.createSession();
            
        } catch (HibernateException e) {
            throw new PersistenceException("Couldn't init HibernatePersistenceManager", e);
        }
    }

    public void dispose() {
        try {
            endSession();
        } catch (Exception e) {
            throw new PersistenceException("Couldn't dispose HibernatePersistenceManager", e);
        } finally {
            try {
                hibernateSessionFactory.closeSession(session);
            } catch (Exception e) {
                throw new PersistenceException("Couldn't close the session", e);
            }
        }
    }

    public void endSession() throws SQLException, HibernateException {
        hibernateSessionFactory.endSession(session);
    }

    public void save(Object objectToSave) {
        try {
        	Transaction tx = session.beginTransaction();
        	session.saveOrUpdate(objectToSave);
            tx.commit();
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }

    public void remove(Object objectToRemove) {
        try {
        	Transaction tx = session.beginTransaction();
        	session.delete(objectToRemove);
        	tx.commit();
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }

    public List findAll(Class type) {
        return findAllSorted(type, null);
    }

    public List findUserbyName(String username) {
        try {

			Criteria crit = session.createCriteria(User.class);
			crit.add(Expression.eq("username", new String(username)));
			
            return crit.list();
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }

    public List findAllSorted(Class type, String sortField) {
        try {
            String query = "FROM " + type.getSimpleName() + " as result";
            if (sortField != null)
                query += " ORDER BY LOWER(result." + sortField + ")";
            return session.createQuery(query).list();
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }

    public List findAllSortedDirected(Class type, String sortField, String direction) {
        try {
            String query = "FROM " + type.getSimpleName() + " as result";
            if (sortField != null)
                query += " ORDER BY LOWER(result." + sortField + ")";
            if (direction != null) {
            	if (direction.equalsIgnoreCase("asc")) { query += " asc"; }
            	if (direction.equalsIgnoreCase("desc")) { query += " desc"; }
            }
            return session.createQuery(query).list();
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }
    public Object getByPrimaryKey(Class type, Object pk) {
        try {
            return session.load(type, (Serializable) pk);
        } catch (ObjectNotFoundException e) {
            return null;
        } catch (HibernateException e) {
            throw new PersistenceException(e);
        }
    }

    public Object getById(Class aClass, long id) {
    	
        try {
            return session.load(aClass, new Long(id));
        } catch (ObjectDeletedException e) {
            return null;
        } catch (ObjectNotFoundException e) {
            return null;
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }

    /**
     * @deprecated
     */
    public List find(String query, Object[] parameters, Class[] parameterTypes) {
        Session session = null;
        List results = null;

        try {
            session = this.session;
            
            if ((parameterTypes != null) || (parameters != null)) {
                Type[] hibernate_parameter_types = getHibernatedParameterTypes(parameterTypes);

                results = session.find(query, parameters, hibernate_parameter_types);
            } else {
                results = session.find(query);
            }

            return results;
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }
    public List getList(String query, Object[] parameters, Class[] parameterTypes) {
        Session session = null;
        List results = null;

        try {
            session = this.session;
            
            if ((parameterTypes != null) || (parameters != null)) {
                Type[] hibernate_parameter_types = getHibernatedParameterTypes(parameterTypes);
                Query q = session.createQuery(query).setParameters(parameters, hibernate_parameter_types);
                results = q.list();
            } else {
                results = session.createQuery(query).list();
            }

            return results;
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
    }

    private static Type[] getHibernatedParameterTypes(Class[] types) {
        if (types == null) {
            return null;
        }

        Type[] hib_types = new Type[types.length];

        for (int i = 0; i < types.length; i++) {
            Class type = types[i];

            hib_types[i] = (Type) classToHibernateTypeMap.get(type);
        }

        return hib_types;
    }

	/* (non-Javadoc)
	 * @see org.blueoxygen.cimande.persistence.PersistenceManager#getById(java.lang.Class, java.lang.String)
	 */
	public Object getById(Class aClass, String id) {
        try {
            return session.load(aClass, new String(id));
        } catch (ObjectDeletedException e) {
            return null;
        } catch (ObjectNotFoundException e) {
            return null;
        } catch (Exception e) {
            throw new PersistenceException(e);
        }
	}

}
