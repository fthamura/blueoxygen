package org.blueoxygen.cimande.theme.actions;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.theme.Theme;

import com.opensymphony.xwork2.ActionSupport;


public class ViewTheme extends ActionSupport implements PersistenceAware {

	protected PersistenceManager pm;
	protected Theme theme;
	private String id;
		
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
	
	public String execute() {
		theme = (Theme) pm.getById(Theme.class, id);

		if (theme == null) {
			addActionError("Such Theme couldn't be found");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}

	public void setId(String id) {
		this.id = id;
	}
	public Theme getTheme() {
		return theme;
	}
}

