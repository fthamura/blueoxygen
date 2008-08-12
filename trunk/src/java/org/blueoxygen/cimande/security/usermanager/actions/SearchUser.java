/**
 * 
 */
package org.blueoxygen.cimande.security.usermanager.actions;

/**
 * @author Abdul Rizal Adompo
 *
 */

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;
import org.blueoxygen.cimande.security.User;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;

public class SearchUser extends UserForm implements HibernateSessionFactoryAware {
	
	private List<User> users = new ArrayList<User>();
	private HibernateSessionFactory hsf;
	private Session sess;
	
	private int maxPage, currPage, nextPage, prevPage = 0, page = 0;
	private int maxRowPerPage = 10;
	private String orderBy = "username";
	private int resultRows;

	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;
	}

	public String execute() {
		try {
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(User.class);

			if (!getUser().getUsername().equalsIgnoreCase("")) {
				crit.add(Expression.like("username", getUser().getUsername(), MatchMode.ANYWHERE));
			}
			resultRows = crit.list().size();
			
			maxPage = resultRows / maxRowPerPage;
			if (resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
			
			setUsers(crit.addOrder(Order.asc(orderBy)).setFirstResult(currPage*maxRowPerPage).setMaxResults(maxRowPerPage).list());
			prevPage = currPage - 1;
			nextPage = currPage + 1;
			page = currPage +1;
			
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

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public Session getSess() {
		return sess;
	}

	public void setSess(Session sess) {
		this.sess = sess;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	
}


