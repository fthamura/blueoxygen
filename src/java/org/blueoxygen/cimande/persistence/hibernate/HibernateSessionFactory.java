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

import org.hibernate.HibernateException;
import org.hibernate.classic.Session;

public interface HibernateSessionFactory {

    Session createSession() throws HibernateException;

    void endSession(Session session) throws SQLException, HibernateException;

    void closeSession(Session session) throws SQLException, HibernateException;
}
