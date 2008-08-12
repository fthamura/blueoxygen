/*
 * Created on Aug 22, 2004
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.role.actions;

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
import org.blueoxygen.cimande.role.Role;

/**
 * @author Agustono Heriadi dark_ilussion@yahoo.com
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class RoleFilter extends RoleForm implements HibernateSessionFactoryAware
{
	private Session sess;
	private List roles = new ArrayList();
	private HibernateSessionFactory hsf;
	private int maxPage, currPage, nextPage, prevPage = 0;
	private int maxRowPerPage = 10;
	private String orderBy = "name";
	private int resultRows;
	
	public String execute() {
		try {
			
			
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(Role.class);
			
			
			
			
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
			
			roles = crit.addOrder(Order.asc(orderBy)).setFirstResult(currPage*maxRowPerPage).setMaxResults(maxRowPerPage).list();
			
			prevPage = currPage - 1;
			nextPage = currPage + 1;

			hsf.endSession(sess);
			hsf.closeSession(sess);
			return SUCCESS;
		} catch (HibernateException e) {
			e.printStackTrace();System.out.println("111111111111111111111111111111");
			return ERROR;
		} catch (SQLException e) {
			e.printStackTrace();System.out.println("22222222222222222222222222222222222");
			return ERROR;
		} 
		
		
	}
	
	

	/**
	 * @return Returns the currPage.
	 */
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
	/**
	 * @return Returns the roles.
	 */
	public List getRoles() {
		return roles;
	}
	/**
	 * @param roles The roles to set.
	 */
	public void setRoles(List roles) {
		this.roles = roles;
	}



	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;
	}
}