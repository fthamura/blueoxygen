/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.theme.actions;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;


import org.blueoxygen.cimande.theme.Theme;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactoryAware;

/**
 * @author amix
 *
 */
public class ListTheme extends ThemeForm implements HibernateSessionFactoryAware{
	
	private HibernateSessionFactory hsf;
	private Session sess;
	private List themes = new ArrayList();
	private Theme theme;
	private String orderBy = "name";
	
	public String execute(){
		try{
			sess = hsf.createSession();
			Criteria crit = sess.createCriteria(Theme.class);
			
			if (!getName().equalsIgnoreCase("")) {
				crit.add(Expression.like("name", "%" + getName() + "%"));
			}
			
			if (!getDescription().equalsIgnoreCase("")) {
				crit.add(Expression.like("description", "%" + getDescription() + "%"));
			}
			
			if (getActiveFlag() != -1) {
				crit.add(Expression.eq("logInformation.activeFlag",
						new Integer(getActiveFlag())));
			}
			
			themes = crit.addOrder(Order.asc(orderBy)).list();
			
			hsf.endSession(sess);
			hsf.closeSession(sess);
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
	 * @return Returns the theme.
	 */
	public Theme getTheme() {
		return theme;
	}
	/**
	 * @param theme The theme to set.
	 */
	public void setTheme(Theme theme) {
		this.theme = theme;
	}
	/**
	 * @return Returns the themes.
	 */
	public List getThemes() {
		return themes;
	}
	/**
	 * @param themes The themes to set.
	 */
	public void setThemes(List themes) {
		this.themes = themes;
	}
}
