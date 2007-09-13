package org.blueoxygen.cimande.gx.gxform.action;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.Gxform;

public class AddGxform extends GxformForm {
	
	public String execute() {
		if (getGxform().getName().equalsIgnoreCase("")){
			addActionError("Name can not be empty");
		}
		if (getGxform().getGxformName().equalsIgnoreCase("")) {
			addActionError("GxformName can not be empty");
		}
		if (hasActionErrors()){
			return INPUT;
		}
		
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			temp = (Gxform)manager.getById(Gxform.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		
		temp.setName(gxform.getName());
		temp.setGxformName(gxform.getGxformName());
		temp.setLogInformation(logInfo);
		
		manager.save(temp);
		setReport("Add gxform succes");
		setId(temp.getId());
		return SUCCESS;
	}


}
