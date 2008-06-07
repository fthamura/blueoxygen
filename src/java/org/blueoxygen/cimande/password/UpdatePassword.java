package org.blueoxygen.cimande.password;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.cimande.security.UserAccessor;
import org.blueoxygen.cimande.security.UserAccessorAware;
import org.blueoxygen.util.StringUtils;

public class UpdatePassword extends PasswordForm implements UserAccessorAware {
	private StringUtils su = new StringUtils();
	private UserAccessor ua;
	public String execute(){
//		if(getCurrPassword() == null || "".equals(getCurrPassword())){
//			addActionError("Your Old Password is Empty");
//		} else {
			if(!sess.getCurrentUser().getPassword().equalsIgnoreCase(su.encodeBase64(getCurrPassword()))){
				addActionError("Your Old Password is Invalid");
			}
//		}
//		if(getNewPassword() == null || "".equals(getNewPassword())){
//			addActionError("Your New Password is Empty");
//		} else {
			if(!getNewPassword().equalsIgnoreCase(getVerifyPassword())){
				addActionError("Retype Your New Password and Verify");
			}
//		}
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
		
		ua.update(user);
		
		return SUCCESS;
	}
	public void setUserAccessor(UserAccessor ua) {
		this.ua = ua;
	}

}
