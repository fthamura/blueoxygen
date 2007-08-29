/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.skin.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.theme.Theme;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author amix
 *
 */
public class ListTheme extends ActionSupport implements PersistenceAware {
	private List themes = new ArrayList();
	private Theme theme;
	private PersistenceManager pm;
	
	public String execute(){
		themes = pm.findAllSorted(Theme.class, "name");
		return SUCCESS;
	}
	/**
	 * @param pm The pm to set.
	 */
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
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
