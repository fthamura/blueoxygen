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
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;



 
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;
import org.blueoxygen.cimande.site.Site;

/**
 * @author anggie pedhe - nodcha_bod@yahoo.com
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class SiteFilter extends SiteForm implements HibernateSessionFactoryAware  {
	private Session sess;
	public List sites;
	private HibernateSessionFactory hsf;
	
	private String keyword = "";
	
	
	public String execute() {
		try {
			
			
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(Site.class);
			
			
			if (!getKeyword().equalsIgnoreCase(""))
			{	
				String keywordQuery = "%" + getKeyword() + "%"; 
				
				crit.add(Expression.disjunction()
						.add(Expression.like("name", keywordQuery).ignoreCase())
						.add(Expression.like("description", keywordQuery).ignoreCase())
						.add(Expression.like("title", keywordQuery).ignoreCase())
						.add(Expression.like("url_branding", keywordQuery).ignoreCase())
						.add(Expression.like("site_url", keywordQuery).ignoreCase())
						.add(Expression.like("admin_email", keywordQuery).ignoreCase())
						.add(Expression.like("notify_email", keywordQuery).ignoreCase())
						.add(Expression.like("notify_from", keywordQuery).ignoreCase())
						.add(Expression.like("notify_message", keywordQuery).ignoreCase())
					
						);
			}
			
			
			sites = crit.list();
//			sess.flush();
			hsf.endSession(sess);
		} catch (HibernateException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				hsf.closeSession(sess);
			} catch (HibernateException e1) {
				e1.printStackTrace();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		
		return SUCCESS;
	}


/**
	 * @return
	 */
	private String getKeyword() {
		// TODO Auto-generated method stub
		return keyword;
	}

public void setHibernateSessionFactory(HibernateSessionFactory hsf) {
	this.hsf = hsf;
	
}
	/**
	 * @return Returns the siteProjects.
	 */
	public List getSites() {
		return sites;
	}
	/**
	 * @param siteProjects The siteProjects to set.
	 */
	public void setSites(List siteProjects) {
		this.sites = siteProjects;
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
	public void setHsf(HibernateSessionFactory hsf) {
		this.hsf = hsf;
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
	/**
	 * @param keyword The keyword to set.
	 */
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}


}
