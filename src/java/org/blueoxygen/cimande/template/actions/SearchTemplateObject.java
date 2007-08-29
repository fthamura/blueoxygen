/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.template.actions;

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
import org.blueoxygen.cimande.template.TemplateObject;

/**
 * @author amix {amix_adib@yahoo.com}
 *
 */
public class SearchTemplateObject extends TemplateObjectForm implements HibernateSessionFactoryAware{
	
	private HibernateSessionFactory hsf;
	private Session sess;
	private List objects = new ArrayList();
	private TemplateObject object;
	private int maxPage, currPage, nextPage, prevPage = 0, page = 0;
	private int maxRowPerPage = 10;
	private int resultRows;
	private String orderBy = "template_skin";
	
	public String execute(){
		try{
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(TemplateObject.class);
			
			if (!getTemplate_skin().equalsIgnoreCase("")) {
				crit.add(Expression.like("template_skin", "%" + getTemplate_skin() + "%"));
			}
			
			if (!getDescription().equalsIgnoreCase("")) {
				crit.add(Expression.like("description", "%" + getDescription() + "%"));
			}
			
			resultRows = crit.list().size();
			
			maxPage = resultRows / maxRowPerPage;
			if (resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
			
			objects= crit.addOrder(Order.asc(orderBy)).setFirstResult(currPage*maxRowPerPage).setMaxResults(maxRowPerPage).list();
			prevPage = currPage - 1;
			nextPage = currPage + 1;
			page = currPage + 1;
											
					
			hsf.endSession(sess);
			return SUCCESS;
			
		} catch (HibernateException e) {
			return ERROR;
		} catch (SQLException e) {
			return ERROR;
		} /*finally {
			try {
				hsf.closeSession(sess);
			} catch (HibernateException e1) {
				return ERROR;
			} catch (SQLException e1) {
				return ERROR;
			}
		}*/
	}
	
	/**
	 * @param hsf The hsf to set.
	 */
	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;
	}

	/**
	 * @return Returns the object.
	 */
	public TemplateObject getObject() {
		return object;
	}
	/**
	 * @param object The object to set.
	 */
	public void setObject(TemplateObject object) {
		this.object = object;
	}
	/**
	 * @return Returns the objects.
	 */
	public List getObjects() {
		return objects;
	}
	/**
	 * @param objects The objects to set.
	 */
	public void setObjects(List objects) {
		this.objects = objects;
	}
	public int getCurrPage() {
		return currPage;
	}
	/**
	 * @param currPage The currPage to set.
	 */
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	/**
	 * @return Returns the maxPage.
	 */
	public int getMaxPage() {
		return maxPage;
	}
	/**
	 * @param maxPage The maxPage to set.
	 */
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	/**
	 * @return Returns the maxRowPerPage.
	 */
	public int getMaxRowPerPage() {
		return maxRowPerPage;
	}
	/**
	 * @param maxRowPerPage The maxRowPerPage to set.
	 */
	public void setMaxRowPerPage(int maxRowPerPage) {
		this.maxRowPerPage = maxRowPerPage;
	}
	/**
	 * @return Returns the nextPage.
	 */
	public int getNextPage() {
		return nextPage;
	}
	/**
	 * @param nextPage The nextPage to set.
	 */
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	/**
	 * @return Returns the orderBy.
	 */
	public String getOrderBy() {
		return orderBy;
	}
	/**
	 * @param orderBy The orderBy to set.
	 */
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
	/**
	 * @return Returns the prevPage.
	 */
	public int getPrevPage() {
		return prevPage;
	}
	/**
	 * @param prevPage The prevPage to set.
	 */
	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}
	/**
	 * @return Returns the resultRows.
	 */
	public int getResultRows() {
		return resultRows;
	}
	/**
	 * @param resultRows The resultRows to set.
	 */
	public void setResultRows(int resultRows) {
		this.resultRows = resultRows;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	
}
