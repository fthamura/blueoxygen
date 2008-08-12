/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.site.actions;


/**
 * @author mee_andto@yahoo.com
 *
 */
public class EditSite extends ViewSite{
	private String theme_id = "";

	public String execute() {

		String result = super.execute();
		return SUCCESS;
		
	}


	/**
	 * @param theme_id The theme_id to set.
	 */
	public void setTheme_id(String theme_id) {
		this.theme_id = theme_id;
	}
}
