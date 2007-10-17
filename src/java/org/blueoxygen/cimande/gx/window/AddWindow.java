package org.blueoxygen.cimande.gx.window;

import java.sql.Timestamp;

import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.LogInformation;


public class AddWindow extends WindowForm {
	
	public String execute() {
		if(getWindow().getName().equalsIgnoreCase("")){
			addActionError("Name can not be empty");
		}

		if(hasActionErrors()){
			return INPUT;
		}
		
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			temp = (GxWindow)manager.getById(GxWindow.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		
		temp.setName(window.getName());
		temp.setDescription(window.getDescription());
		temp.setLogInformation(logInfo);
		
		manager.save(temp);
		setReport("Add window success");
		setId(temp.getId());
		return SUCCESS;
	}

}
