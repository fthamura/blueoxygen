package org.blueoxygen.cimande.password;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;
//import org.blueoxygen.jobmerv.entity.Country;
//import org.blueoxygen.jobmerv.entity.Employee;
import org.blueoxygen.util.StringUtils;
import org.blueoxygen.cimande.gx.*;

public class UpdatePassword extends PasswordForm implements SessionCredentialsAware{
	private SessionCredentials sess;
	private StringUtils su = new StringUtils();
	public String execute(){
		if(getCurrPassword() == null || "".equals(getCurrPassword())){
			addActionError("Your Old Password is Empty");
		} else {
			if(!sess.getCurrentUser().getPassword().equalsIgnoreCase(su.encodeBase64(getCurrPassword()))){
				addActionError("Your current password is invalid");
			}
		}
		if(!getNewPassword().equalsIgnoreCase(getVerifyPassword())){
			addActionError("Verify your new password");
		}
		if(hasErrors()){
			return INPUT;
		}
		User user;
		LogInformation logInfo;
		
		user = sess.getCurrentUser();
		logInfo = user.getLogInformation();
		
		logInfo.setActiveFlag(1);
		logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		
		user.setPassword(su.encodeBase64(getNewPassword()));
		user.setLogInformation(logInfo);
		
		getManager().save(user);
		
		return SUCCESS;
	}
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
		
	}

}
