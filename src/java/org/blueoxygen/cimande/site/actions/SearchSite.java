/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.site.actions;

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
import org.blueoxygen.cimande.site.Site;

/**
 * @author Umar Khatab umar@intercitra.com
 * modified by
 * @author mee_andto@yahoo.com
 *
 */
public class SearchSite extends SiteForm
		implements
			HibernateSessionFactoryAware {

	private List sites = new ArrayList();
	private HibernateSessionFactory hsf;
	private Session sess;

	private String orderBy = "name";
	private int maxPage, currPage, nextPage, prevPage = 0, page = 0;
	private int maxRowPerPage = 10;
	private int resultRows;
	
	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;

	}
	
	public String execute() {
		setCurrDescriptor(getCurrDescriptorUrl());
		try {
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(Site.class);

			if (!getSite_headline().equalsIgnoreCase("")) {
				crit.add(Expression.like("site_headline", "%" + getSite_headline() + "%"));
			}

			if (!getNotify_message().equalsIgnoreCase("")) {
				crit.add(Expression.like("notify_message", "%" + getNotify_message() + "%"));
			}

			if (!getNotify_from().equalsIgnoreCase("")) {
				crit.add(Expression.like("notify_from", "%" + getNotify_from() + "%"));
			}

			if (!getNotify_email().equalsIgnoreCase("")) {
				crit.add(Expression.like("notify_email", "%" + getNotify_email() + "%"));
			}
			
			if (getNotify_flag() != -1) {
				crit.add(Expression.eq("notify_flag", new Integer(getNotify_flag())));
			}

			if (!getAdmin_email().equalsIgnoreCase("")) {
				crit.add(Expression.like("admin_email", "%" + getAdmin_email() + "%"));
			}

			if (!getSite_url().equalsIgnoreCase("")) {
				crit.add(Expression.like("site_url", "%" + getSite_url() + "%"));
			}

			if (!getUrl_branding().equalsIgnoreCase("")) {
				crit.add(Expression.like("url_branding", "%" + getUrl_branding() + "%"));
			}
			
			if (!getName().equalsIgnoreCase("")) {
				crit.add(Expression.like("name", "%" + getName() + "%"));
			}

			if (!getDescription().equalsIgnoreCase("")) {
				crit.add(Expression.like("description", "%" + getDescription()
						+ "%"));
			}
			
			if (!getTitle().equalsIgnoreCase("")) {
				crit.add(Expression.like("title", "%" + getTitle()
						+ "%"));
			}
			
			
			if (getActiveFlag() != -1) {
				crit.add(Expression.eq("logInformation.activeFlag",
						new Integer(getActiveFlag())));
			}

			resultRows = crit.list().size();
			
			maxPage = resultRows / maxRowPerPage;
			if (resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
			
			sites= crit.addOrder(Order.asc(orderBy)).setFirstResult(currPage*maxRowPerPage).setMaxResults(maxRowPerPage).list();
			
			prevPage = currPage - 1;
			nextPage = currPage + 1;
			page = currPage + 1;
			
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

	
	public Session getSess() {
		return sess;
	}

	public List getSites() {
		return sites;
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

	public int getResultRows() {
		return resultRows;
	}

	public void setResultRows(int resultRows) {
		this.resultRows = resultRows;
	}

	public void setSites(List sites) {
		this.sites = sites;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	
	
}