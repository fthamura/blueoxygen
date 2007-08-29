package org.blueoxygen.cimande.gx.field.action;

import java.sql.Timestamp;
import java.util.ArrayList;



import org.blueoxygen.cimande.gx.field.Field;
import org.blueoxygen.cimande.gx.tab.Tab;
import org.blueoxygen.cimande.LogInformation;

public class AddField extends FieldForm {
	
	
	public String execute() {
		if(getField().getName().equalsIgnoreCase("")){
			addActionError("Name can not be empty");
		}
		if(getTabId().equalsIgnoreCase("")){
			addActionError("Please select a tab first");
		}
		if(hasActionErrors()){
			return INPUT;
		}
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			temp = (Field)manager.getById(Field.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		tab = (Tab)manager.getById(Tab.class, tabId);
		temp.setTab(tab);
		temp.setName(field.getName());
		temp.setDescription(field.getDescription());
		temp.setLogInformation(logInfo);
		
		manager.save(temp);
		
		String query = "FROM "+ Field.class.getName() + " AS tc WHERE tc.tab.id='"+tab.getId()+"'";
		fields = (ArrayList<Field>)manager.getList(query, null, null);
		setReport("Add field success");
		return SUCCESS;
	}
}
