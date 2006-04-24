package org.blueoxygen.cimande.theme.actions;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.theme.Theme;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork.ActionSupport;




public class ThemeForm extends ActionSupport implements PersistenceAware{
	
	protected Theme theme;
	protected PersistenceManager pm;
	protected ModuleFunction moduleFunction;
	protected LogInformation logInfo;
	private String id;
	private String name="";
	private String description="";
	private String theme_folder="";
	private int activeFlag = -1;
	
	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return Returns the description
	 */
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
	 * @return Returns the theme_folder.
	 */
	public String getTheme_folder() {
		return theme_folder;
	}
	public void setTheme_folder(String theme_folder) {
		this.theme_folder = theme_folder;
	}
	
	/**
	 * @return Returns the theme.
	 */
	public Theme getTheme() {
		return theme;
	}
	public void setTheme(Theme theme) {
		this.theme = theme;
	}
	
	/**
	 * @return Returns the persistenceManager.
	 */
	public PersistenceManager getPersistenceManager() {
		return pm;
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
	
	public int getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}
	
	public ModuleFunction getModuleFunction() {
		return moduleFunction;
	}
	/**
	 * @param moduleFunction The moduleFunction to set.
	 */
	public void setModuleFunction(ModuleFunction moduleFunction) {
		this.moduleFunction = moduleFunction;
	}
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
}
