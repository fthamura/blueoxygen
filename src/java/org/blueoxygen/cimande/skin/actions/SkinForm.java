/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.skin.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.skin.Skin;
import org.blueoxygen.cimande.theme.Theme;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author amix
 *
 */
public class SkinForm extends ActionSupport implements PersistenceAware{
	protected PersistenceManager pm;
	protected LogInformation logInfo;
	protected Skin skin;
	protected Theme theme;
	private List themes = new ArrayList();	
	private String theme_id = "";
	
	private String id;
	private String name = "";
	private String description = "";
	private String url_theme = "";
	private int activeFlag = -1;
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;		
	}

	/**
	 * @return Returns the activeFlag.
	 */
	public int getActiveFlag() {
		return activeFlag;
	}

	/**
	 * @return Returns the description.
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}

	/**
	 * @return Returns the name.
	 */
	public String getName() {
		return name;
	}

	/**
	 * @return Returns the url_theme.
	 */
	public String getUrl_theme() {
		return url_theme;
	}

	/**
	 * @param activeFlag The activeFlag to set.
	 */
	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}

	/**
	 * @param description The description to set.
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @param id The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @param name The name to set.
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @param url_theme The url_theme to set.
	 */
	public void setUrl_theme(String url_theme) {
		this.url_theme = url_theme;
	}

	/**
	 * @return Returns the themeId.
	 */
	public String getTheme_id() {
		return theme_id;
	}

	/**
	 * @param themeId The themeId to set.
	 */
	public void setTheme_id(String theme_id) {
		this.theme_id = theme_id;
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
	
	
}
