package org.blueoxygen.cimande.theme;


import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;

/**
 * @author kromy
 * @hibernate.class table="theme"
 */
@Entity()
@Table(name="theme")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Theme extends DefaultPersistent{
	private String name;
	private String description;
	private String theme_folder;
	
	/**
	 * @return Returns the name.
	 * @hibernate.property length="125"
	 */
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * @return Returns the description.
	 * @hibernate.property length="125"
	 */
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
	 * @return Returns the theme_folder.
	 * @hibernate.property length="50"
	 */
	public String getTheme_folder() {
		return theme_folder;
	}
	public void setTheme_folder(String theme_folder) {
		this.theme_folder = theme_folder;
	}
}
