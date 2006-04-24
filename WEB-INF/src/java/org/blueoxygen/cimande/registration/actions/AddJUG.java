package org.blueoxygen.cimande.registration.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class AddJUG extends JUGForm implements SessionCredentialsAware{
	protected SessionCredentials sess;

	public String execute(){
		if(jug.getFirstName().equalsIgnoreCase("")){
			addActionError("name can't be empty");
		}
		if(jug.getEmail().equalsIgnoreCase("")){
			addActionError("email can't be empty");
		}
		if(hasErrors()){
			return INPUT;
		}
		logInfo = new LogInformation();
		logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		jug.setLogInformation(logInfo);
		pm.save(jug);
		return SUCCESS;
	}
	
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
	}

}
