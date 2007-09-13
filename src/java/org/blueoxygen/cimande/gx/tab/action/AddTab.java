package org.blueoxygen.cimande.gx.tab.action;

import java.sql.Timestamp;
import java.util.ArrayList;

import org.blueoxygen.cimande.gx.entity.Tab;
import org.blueoxygen.cimande.gx.entity.Window;
import org.blueoxygen.cimande.LogInformation;

public class AddTab extends TabForm {
	
	
	public String execute() {
		if(getTab().getName().equalsIgnoreCase("")){
			addActionError("Name can not be empty");
		}
		if(getWindowId().equalsIgnoreCase("")){
			addActionError("Please select a window first");
		}
		if(hasActionErrors()){
			return INPUT;
		}
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			temp = (Tab)manager.getById(Tab.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		window = (Window)manager.getById(Window.class, windowId);
		temp.setWindow(window);
		temp.setName(tab.getName());
		temp.setDescription(tab.getDescription());
		temp.setLogInformation(logInfo);
		
		manager.save(temp);
		
		String query = "FROM "+ Tab.class.getName() + " AS tc WHERE tc.window.id='"+window.getId()+"'";
		tabs = (ArrayList<Tab>)manager.getList(query, null, null);
		setReport("Add tab success");
		return SUCCESS;
	}
}
