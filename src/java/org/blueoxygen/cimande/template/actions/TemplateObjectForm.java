/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.template.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.template.TemplateObject;
import org.blueoxygen.cimande.theme.Theme;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author amix {amix_adib@yahoo.com}
 *
 */
public class TemplateObjectForm extends ActionSupport implements PersistenceAware{
	protected PersistenceManager pm;
	protected LogInformation logInfo;
	
	protected Theme theme;
	protected TemplateObject object;
	
	private List themes = new ArrayList();	
	private String theme_id = "";
	
	private String id;
	private String template_skin = "";
	private String description = "";
	
	public String execute(){
		themes = pm.findAllSorted(Theme.class, "name");
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;		
	}

	/**
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
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
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

	/**
	 * @return Returns the logInfo.
	 */
	public LogInformation getLogInfo() {
		return logInfo;
	}

	/**
	 * @param logInfo The logInfo to set.
	 */
	public void setLogInfo(LogInformation logInfo) {
		this.logInfo = logInfo;
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
	 * @return Returns the object.
	 */
	public TemplateObject getObject() {
		return object;
	}

	/**
	 * @param object The object to set.
	 */
	public void setObject(TemplateObject object) {
		this.object = object;
	}
	
}
