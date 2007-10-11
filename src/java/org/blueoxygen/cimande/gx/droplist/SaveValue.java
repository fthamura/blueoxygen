package org.blueoxygen.cimande.gx.droplist;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GXDroplistName;
import org.blueoxygen.cimande.gx.entity.GXDroplistValue;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class SaveValue extends  DroplistForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;
	public String execute(){
		if(getName().getId() == null || "".equalsIgnoreCase(getName().getId())){
			addActionError("Please Select Droplist Name");
		} else {
			setName((GXDroplistName) manager.getById(GXDroplistName.class, getName().getId()));
		}
		if(getValue().getValue() == null || "".equalsIgnoreCase(getValue().getValue())){
			addActionError("Value is required");
		}
		if(hasErrors()){
			return INPUT;
		}
		LogInformation log;
		if(getValue().getId() == null){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else if(getValue().getId() != null && "".equalsIgnoreCase(getName().getId())){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			getValue().setId(null);
		} else {
			GXDroplistValue temp = getValue();
			setValue((GXDroplistValue)manager.getById(GXDroplistValue.class, getValue().getId()));
			log = getValue().getLogInformation();
			getValue().setValue(temp.getValue());
			getValue().setDescription(temp.getDescription());
		}
		log.setActiveFlag(1);
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		getValue().setLogInformation(log);
		getValue().setName(getName());
		manager.save(getValue());
		return SUCCESS;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}
}
