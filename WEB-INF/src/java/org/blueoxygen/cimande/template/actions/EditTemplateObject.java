/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.template.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.theme.Theme;

/**
 * @author amix {amix_adib@yahoo.com}
 *
 */
public class EditTemplateObject extends ViewTemplateObject {
	
	protected Theme theme;
	private List themes = new ArrayList();
	private String theme_id = "";

	public String execute() {

		String result = super.execute();
		themes = pm.findAllSorted(Theme.class, "name");
		return SUCCESS;
		
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
	 * @return Returns the theme_id.
	 */
	public String getTheme_id() {
		return theme_id;
	}

	/**
	 * @param theme_id The theme_id to set.
	 */
	public void setTheme_id(String theme_id) {
		this.theme_id = theme_id;
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
