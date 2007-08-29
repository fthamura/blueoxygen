package org.blueoxygen.cimande.gx.droplist.action;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.droplist.Droplist;
import org.blueoxygen.cimande.gx.droplistname.DroplistName;
import org.blueoxygen.cimande.gx.droplistvalue.DroplistValue;

public class AddDroplist extends DroplistForm {
	public String execute() {
		DroplistName dn = new DroplistName();
		DroplistValue dv = new DroplistValue();
		
		if(getDroplistnameId().equalsIgnoreCase("")) {
			addActionError("Name cannot be empty");
		}
		
		if(getDroplistvalueId().equalsIgnoreCase("")) {
			addActionError("Value cannot be empty");
		}
		if(hasActionErrors()) {
			return INPUT;
		}
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")) {
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		}else {
			temp = (Droplist)manager.getById(Droplist.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		
		dn = (DroplistName) manager.getById(DroplistName.class, getDroplistnameId());
		dv = (DroplistValue) manager.getById(DroplistValue.class, getDroplistvalueId());
		
		temp.setName(dn);
		temp.setValue(dv);
		temp.setLogInformation(logInfo);
		
		manager.save(temp);
		setReport("Add success");
		return SUCCESS;
		
	}
}