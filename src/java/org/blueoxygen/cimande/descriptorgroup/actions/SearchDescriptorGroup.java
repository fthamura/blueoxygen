/**
 * 
 */
package org.blueoxygen.cimande.descriptorgroup.actions;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;


import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;
import org.blueoxygen.cimande.descriptors.DescriptorGroup;

/**
 * @author Ikromy
 *
 */
public class SearchDescriptorGroup extends DescriptorGroupForm implements HibernateSessionFactoryAware {

	private List desGroups = new ArrayList();
	private HibernateSessionFactory hsf;
	private Session sess;
	private int maxPage, currPage, nextPage, prevPage = 0;
	private int maxRowPerPage = 10;
	private String orderBy = "groupId";
	private int resultRows;

	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;
	}
	
	public String execute() {

		try {
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(DescriptorGroup.class);
			
			if (!getGroupId().equalsIgnoreCase("")) {
				crit.add(Expression.like("groupId", "%" + getGroupId() + "%"));
			}
			
			if (!getFolder().equalsIgnoreCase("")) {
				crit.add(Expression.like("folder", "%" + getFolder()
						+ "%"));
			}

			if (!getDescription().equalsIgnoreCase("")) {
				crit.add(Expression.like("description", "%" + getDescription()
						+ "%"));
			}
			if (getActiveFlag() != -1) {
				crit.add(Expression.eq("logInformation.activeFlag",
						new Integer(getActiveFlag())));
			}
			
			resultRows = crit.list().size();
			
			maxPage = resultRows / maxRowPerPage;
			if (resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
			
			desGroups = crit.addOrder(Order.asc(orderBy)).setFirstResult(currPage*maxRowPerPage).setMaxResults(maxRowPerPage).list();
			prevPage = currPage - 1;
			nextPage = currPage + 1;
			
			desGroups = crit.list();
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
	
	/**
	 * @return Returns the desGroups.
	 */
	public List getDesGroups() {
		return desGroups;
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
}
