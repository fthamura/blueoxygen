/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.site.actions;


import org.blueoxygen.cimande.theme.Theme;

/**
 * @author mee_andto@yahoo.com
 *
 */
public class EditSite extends ViewSite{
	
	protected Theme theme;
	private String theme_id = "";

	public String execute() {

		String result = super.execute();
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
}
