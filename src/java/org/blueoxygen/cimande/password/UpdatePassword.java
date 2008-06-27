package org.blueoxygen.cimande.password;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.cimande.security.UserAccessor;
import org.blueoxygen.cimande.security.UserAccessorAware;
import org.blueoxygen.util.StringUtils;

import com.opensymphony.xwork2.validator.annotations.FieldExpressionValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

@Validation
public class UpdatePassword extends PasswordForm implements UserAccessorAware {
	private StringUtils su = new StringUtils();
	private UserAccessor ua;

	@Validations(
			requiredStrings = {
					@RequiredStringValidator(type = ValidatorType.SIMPLE, fieldName = "currPassword", message = "Your current password is empty"),
					@RequiredStringValidator(type = ValidatorType.SIMPLE, fieldName = "newPassword", message = "Your new password is empty"),
					@RequiredStringValidator(type = ValidatorType.SIMPLE, fieldName = "verifyPassword", message = "Verify your new password") }, 
			stringLengthFields = { 
					@StringLengthFieldValidator(fieldName = "newPassword", minLength = "3", message = "Password minimum 3 character") }, 
			fieldExpressions = { 
					@FieldExpressionValidator(fieldName = "verifyPassword", expression = "newPassword == verifyPassword", message = "Verify your new Password") })
	public String execute() {
		if (!sess.getCurrentUser().getPassword().equalsIgnoreCase(
				su.encodeBase64(getCurrPassword()))) {
			addFieldError("currPassword", "Your current password is invalid");
		}
		if (hasErrors()) {
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
