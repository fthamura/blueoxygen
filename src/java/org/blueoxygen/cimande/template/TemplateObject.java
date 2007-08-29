/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.template;

import org.blueoxygen.cimande.theme.Theme;
import org.blueoxygen.cimande.DefaultPersistent;

/**
 * @author amix {amix_adib@yahoo.com}
 * @hibernate.class table="template_object"
 */
public class TemplateObject extends DefaultPersistent{
	
	private Theme theme;
	private String template_skin;
	private String description;
	
	/**
	 * @hibernate.property
	 * @return Returns the description.
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description The description to set.
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @hibernate.property length="25"
	 * @return Returns the template_skin.
	 */
	public String getTemplate_skin() {
		return template_skin;
	}
	/**
	 * @param template_skin The template_skin to set.
	 */
	public void setTemplate_skin(String template_skin) {
		this.template_skin = template_skin;
	}
	/**
	 * @return Returns the theme.
	 * @hibernate.many-to-one column="theme_id"
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
	
}
