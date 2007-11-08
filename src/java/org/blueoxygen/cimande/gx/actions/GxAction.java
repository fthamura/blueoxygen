package org.blueoxygen.cimande.gx.actions;

import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

import com.opensymphony.xwork2.ActionSupport;

public class GxAction extends ActionSupport implements PersistenceAware, SessionCredentialsAware {
	protected PersistenceManager manager;
	protected SessionCredentials sessionCredentials;
	private GxWindow window = new GxWindow();
	private GxTab tab = new GxTab();
	
	public String execute(){
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public GxWindow getWindow() {
		return window;
	}

	public void setWindow(GxWindow window) {
		this.window = window;
	}

	public GxTab getTab() {
		return tab;
	}

	public void setTab(GxTab tab) {
		this.tab = tab;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

}
