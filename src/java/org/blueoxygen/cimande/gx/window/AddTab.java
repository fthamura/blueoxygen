package org.blueoxygen.cimande.gx.window;

import java.sql.Timestamp;

import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class AddTab extends WindowForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;
	private GxTab tab = new GxTab();
	
	public String execute(){
		if(getWindow().getId() != null && !"".equalsIgnoreCase(getWindow().getId())){
			setWindow((GxWindow) manager.getById(GxWindow.class, getWindow().getId()));
		} else {
			addActionError("Window not describe");
		}
		if(getTab().getId() != null && !"".equalsIgnoreCase(getTab().getId())){
			setTab((GxTab) manager.getById(GxTab.class, getTab().getId()));
		} else {
			addActionError("Select tab to add to this window");
		}
		if(hasErrors()){
			return INPUT;
		}
		getTab().setWindow(getWindow());
		getTab().getLogInformation().setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		getTab().getLogInformation().setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		manager.save(getTab());
		return SUCCESS;
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
