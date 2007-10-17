package org.blueoxygen.cimande.gx.tab;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GxTable;
import org.blueoxygen.cimande.gx.entity.GxTab;

public class SaveTab extends TabForm {
	
	public String execute() {
		if (getTab().getName().equalsIgnoreCase("")){
			addActionError("Name can not be empty");
		}
		
		if (getTable().getId() == null || "".equalsIgnoreCase(getTable().getId())) {
			addActionError("Table can not be empty");
		} else {
			setTable((GxTable) manager.getById(GxTable.class, getTable().getId()));
		}
	
		if (hasActionErrors()){
			return INPUT;
		}
		
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			temp = (GxTab)manager.getById(GxTab.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		
		temp.setName(tab.getName());
		temp.setTable(getTable());
		
		temp.setLogInformation(logInfo);
		
		manager.save(temp);
		setReport("Add tab succes");
		setId(temp.getId());
		return SUCCESS;
	}


}
