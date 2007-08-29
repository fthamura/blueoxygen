/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.skin.actions;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;


import org.blueoxygen.cimande.skin.Skin;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;

/**
 * @author amix
 *
 */
public class ListSkin extends SkinForm implements HibernateSessionFactoryAware{
	
	private HibernateSessionFactory hsf;
	private Session sess;
	private List skins = new ArrayList();
	private Skin skin;
	
	private String orderBy = "name";
	private int maxPage, currPage, nextPage, prevPage = 0, page = 0;
	private int maxRowPerPage = 10;
	private int resultRows;
	
	public String execute(){
		try{
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(Skin.class);
			
			if (!getName().equalsIgnoreCase("")) {
				crit.add(Expression.like("name", "%" + getName() + "%"));
			}
			
			if (!getDescription().equalsIgnoreCase("")) {
				crit.add(Expression.like("description", "%" + getDescription() + "%"));
			}
			
			if (!getUrl_theme().equalsIgnoreCase("")) {
				crit.add(Expression.like("url_theme", "%" + getUrl_theme() + "%"));
			}
			
			if (getActiveFlag() != -1) {
				crit.add(Expression.eq("logInformation.activeFlag",
						new Integer(getActiveFlag())));
			}
			resultRows = crit.list().size();
			
			maxPage = resultRows / maxRowPerPage;
			if (resultRows % maxRowPerPage == 0) maxPage = maxPage - 1;
			
			skins = crit.addOrder(Order.asc(orderBy)).setFirstResult(currPage*maxRowPerPage).setMaxResults(maxRowPerPage).list();
			
			prevPage = currPage - 1;
			nextPage = currPage + 1;
			page = currPage + 1;
			
			
			hsf.endSession(sess);
			
			return SUCCESS;
		} catch (HibernateException e){
			return ERROR;
		} catch (SQLException sqle){
			return ERROR;
		}
	}
	
	/**
	 * @param hsf The hsf to set.
	 */
	public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
		this.hsf = hsf;
	}

	/**
	 * @return Returns the skin.
	 */
	public Skin getSkin() {
		return skin;
	}
	/**
	 * @param skin The skin to set.
	 */
	public void setSkin(Skin skin) {
		this.skin = skin;
	}
	/**
	 * @return Returns the skins.
	 */
	public List getSkins() {
		return skins;
	}
	/**
	 * @param skins The skins to set.
	 */
	public void setSkins(List skins) {
		this.skins = skins;
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

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	
}
