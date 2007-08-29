/*
 * Created on Aug 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.template.actions;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;


import org.blueoxygen.cimande.template.Template;

import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;


/**
 * @author fauzan prasetyo�
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class SearchTemplate extends TemplateForm implements HibernateSessionFactoryAware{
	private HibernateSessionFactory hsf;
	private Session sess;
	private List templates = new ArrayList();

	private int maxPage, currPage, nextPage, prevPage = 0, page =0;
	private int maxRowPerPage = 20;
	private String orderBy = "name";
	private int resultRows;


	public String execute(){
	try
		{
	
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(Template.class);
			
			
			
			if (!getName().equalsIgnoreCase(""))
			{
				crit.add(Expression.like("name", "%" + getName() + "%"));
			}
			if (!getDescription().equalsIgnoreCase(""))
			{
				crit.add(Expression.like("description", "%" + getDescription() + "%"));
			}

			resultRows = crit.list().size();
			
			maxPage = resultRows / maxRowPerPage;
			if (resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
			
			templates = crit.addOrder(Order.asc(orderBy)).setFirstResult(currPage*maxRowPerPage).setMaxResults(maxRowPerPage).list();
			
			prevPage = currPage - 1;
			nextPage = currPage + 1;
			page = currPage + 1;
			
			hsf.endSession(sess);
			return SUCCESS;
			
		} catch (HibernateException e)
		{
			return ERROR;
		} catch (SQLException e)
		{
			return ERROR;
		}finally {
			try {
				hsf.closeSession(sess);
			} catch (HibernateException e1) {
				return ERROR;
			} catch (SQLException e1) {
				return ERROR;
			}
		}
	}

	
	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;
		
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


	public Session getSess() {
		return sess;
	}


	public void setSess(Session sess) {
		this.sess = sess;
	}


	public List getTemplates() {
		return templates;
	}


	public void setTemplates(List templates) {
		this.templates = templates;
	}


	public int getPage() {
		return page;
	}


	public void setPage(int page) {
		this.page = page;
	}

	

}
