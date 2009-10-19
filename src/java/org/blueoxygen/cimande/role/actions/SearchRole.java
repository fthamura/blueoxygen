/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.role.actions;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.util.URLBean;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;
import org.blueoxygen.cimande.role.Role;

/**
 * @author frans
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class SearchRole extends RoleForm
		implements
			HibernateSessionFactoryAware {

	private List roles = new ArrayList();
	private HibernateSessionFactory hsf;
	private Session sess;

	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;

	}

	public String execute() {
		
		setCurrDescriptor(getCurrDescriptorUrl());
		System.out.println("URL "+getCurrDescriptorUrl());
		try {
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(Role.class);

			if (!getName().equalsIgnoreCase("")) {
				crit.add(Expression.like("name", "%" + getName() + "%"));
			}

			if (!getDescription().equalsIgnoreCase("")) {
				crit.add(Expression.like("description", "%" + getDescription()
						+ "%"));
			}

			if (getActiveFlag() != -1) {
				crit.add(Expression.eq("logInformation.activeFlag",
						new Integer(getActiveFlag())));
			}

			roles = crit.list();
			hsf.endSession(sess);
			return SUCCESS;

		} catch (HibernateException e) {
			return ERROR;
		} catch (SQLException e) {
			return ERROR;
		} finally {
			try {
				hsf.closeSession(sess);
			} catch (HibernateException e1) {
				return ERROR;
			} catch (SQLException e1) {
				return ERROR;
			}
		}
	}

	public List getRoles() {
		return roles;
	}
}