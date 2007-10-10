package org.blueoxygen.cimande.gx2.gxgreenator.action;

import java.sql.SQLException;

import org.blueoxygen.cimande.gx2.entity.GxGreenator;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;

public class SearchGxgreenator extends GxgreenatorForm implements HibernateSessionFactoryAware {
	
	private HibernateSessionFactory hsf;
	private Session sess;
	private int maxPage, currPage, nextPage, prevPage = 0, page = 0;
	private int maxRowPerPage = 10;
	private String orderBy = "name";
	private int resultRows;
	
	public String execute() {
		sess = hsf.createSession();
		Criteria crit = sess.createCriteria(GxGreenator.class);
		if (!gxgreenator.getName().equalsIgnoreCase("")){
			crit.add(Expression.like("name", "%"+ gxgreenator.getName()+"%"));
		}
		if (!gxgreenator.getValue().equalsIgnoreCase("")){
			crit.add(Expression.like("name", "%"+ gxgreenator.getValue()+"%"));
		}
//		if (!gxgreenator.getType().equalsIgnoreCase("")){
//			crit.add(Expression.like("name", "%"+ gxgreenator.getType()+"%"));
//		}
		
		resultRows = crit.list().size();
		maxPage = resultRows / maxRowPerPage;
		prevPage = currPage - 1;
		nextPage = currPage + 1;
		page = currPage + 1;
		
		if (resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
		gxgreenators = crit.addOrder(Order.asc(orderBy))
			.setFirstResult(currPage*maxRowPerPage)
			.setMaxResults(maxRowPerPage)
			.list();
		
		try{
			hsf.endSession(sess);
		} catch (HibernateException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SUCCESS;
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
	 * @return Returns the hsf.
	 */
	public HibernateSessionFactory getHsf() {
		return hsf;
	}

	/**
	 * @param hsf The hsf to set.
	 */
	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;
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
	 * @return Returns the page.
	 */
	public int getPage() {
		return page;
	}

	/**
	 * @param page The page to set.
	 */
	public void setPage(int page) {
		this.page = page;
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
	 * @return Returns the sess.
	 */
	public Session getSess() {
		return sess;
	}

	/**
	 * @param sess The sess to set.
	 */
	public void setSess(Session sess) {
		this.sess = sess;
	}	
}
