package org.blueoxygen.cimande.gx2.droplist;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx2.entity.GXDroplistName;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class SaveDroplist extends DroplistForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;
	
	public String execute(){
		if(getName().getName() == null || "".equalsIgnoreCase(getName().getName())){
			addActionError("Name is required");
		}
		if(getParent().getId() == null || "".equalsIgnoreCase(getParent().getId())){
			setParent(null);
		} else {
			setParent((GXDroplistName) manager.getById(GXDroplistName.class, getParent().getId()));
		}
		if(hasErrors()){
			return INPUT;
		}
		
		LogInformation log;
		if(getName().getId() == null){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else if(getName().getId() != null && "".equalsIgnoreCase(getName().getId())){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			getName().setId(null);
		} else {
			GXDroplistName temp = getName();
			setName((GXDroplistName)manager.getById(GXDroplistName.class, getName().getId()));
			log = getName().getLogInformation();
			getName().setName(temp.getName());
			getName().setDescription(temp.getDescription());
		}
		log.setActiveFlag(1);
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		getName().setLogInformation(log);
		manager.save(getName());
		return SUCCESS;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}
}
