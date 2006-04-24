/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.roleprivilage.actions;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;


import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;
import org.blueoxygen.cimande.role.RolePrivilage;

/**
 * @author mee_andto@yahoo.com
 *
 */
public class SearchRolePrivilage extends RolePrivilageForm
		implements
			HibernateSessionFactoryAware {

	private List privilages = new ArrayList();
	private HibernateSessionFactory hsf;
	private Session sess;

	private String orderBy = "id";
	private int maxPage, currPage, nextPage, prevPage = 0;
	private int maxRowPerPage = 10;
	private int resultRows;
	
	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;

	}
	
	public String execute() {

		try {
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(RolePrivilage.class);
			
			if (getPrivilage_flag() != -1) {
				crit.add(Expression.eq("privilage_flag", new Integer(getPrivilage_flag())));
			}

			if (!getUrl_xml().equalsIgnoreCase("")) {
				crit.add(Expression.like("url_xml", "%" + getUrl_xml() + "%"));
			}
			
			if (!getRole_id().equalsIgnoreCase("")) {
				crit.add(Expression.like("role.id", "%" + getRole_id()
						+ "%"));
			}
			if (!getModule_function_id().equalsIgnoreCase("")) {
				crit.add(Expression.like("moduleFunction.id", "%" + getModule_function_id()
						+ "%"));
			}
			
			
			if (getActiveFlag() != -1) {
				crit.add(Expression.eq("logInformation.activeFlag",
						new Integer(getActiveFlag())));
			}

			resultRows = crit.list().size();
			
			maxPage = resultRows / maxRowPerPage;
			if (resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
			
			privilages= crit.addOrder(Order.asc(orderBy)).setFirstResult(currPage*maxRowPerPage).setMaxResults(maxRowPerPage).list();
			
			prevPage = currPage - 1;
			nextPage = currPage + 1;
			
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

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getMaxRowPerPage() {
		return maxRowPerPage;
	}

	public void setMaxRowPerPage(int maxRowPerPage) {
		this.maxRowPerPage = maxRowPerPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public List getPrivilages() {
		return privilages;
	}

	public void setPrivilages(List privilages) {
		this.privilages = privilages;
	}

	public int getResultRows() {
		return resultRows;
	}

	public void setResultRows(int resultRows) {
		this.resultRows = resultRows;
	}

	public Session getSess() {
		return sess;
	}

	public void setSess(Session sess) {
		this.sess = sess;
	}

	
	
}