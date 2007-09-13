/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.skin;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.theme.Theme;

import org.blueoxygen.cimande.DefaultPersistent;

/**
 * @author amix
 * @hibernate.class table="skin"
 */
@Entity()
@Table(name="skin")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Skin extends DefaultPersistent{
	private Theme theme;
	private String name;
	private String description;
	private String url_theme;
	
	/**
	 * @return Returns the theme.
	 * @hibernate.many-to-one column="theme_id"
	 */
	@ManyToOne
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
	 * @hibernate.property
	 * @return Returns the description.
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @hibernate.property length="128"
	 * @return Returns the name.
	 */
	public String getName() {
		return name;
	}
	/**
	 * @hibernate.property length="128"
	 * @return Returns the url_theme.
	 */
	public String getUrl_theme() {
		return url_theme;
	}
	/**
	 * @param description The description to set.
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @param name The name to set.
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @param url_theme The urlTheme to set.
	 */
	public void setUrl_theme(String url_theme) {
		this.url_theme = url_theme;
	}
			
}
