package org.blueoxygen.cimande.registration;

import java.net.MalformedURLException;

import org.apache.commons.mail.EmailException;
import org.apache.velocity.exception.MethodInvocationException;
import org.apache.velocity.exception.ParseErrorException;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.cimande.security.UserAccessor;
import org.blueoxygen.cimande.security.UserAccessorAware;

public class ResendMail extends RegistrationForm implements UserAccessorAware {
	private User user;
	private UserAccessor ua;

	public String execute() {
		boolean success = true;
		try {
			if (getUser().getUsername() != null
					&& !"".equalsIgnoreCase(getUser().getUsername())) {
				setUser(ua.getByUsername(getUser().getUsername()));
				if (getUser() != null) {
					new SendActMail().send(getUser());
				}
			} else {
				success = false;
				addActionError("Please Enter the username");
			}
		} catch (EmailException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (ResourceNotFoundException e) {
			e.printStackTrace();
		} catch (ParseErrorException e) {
			e.printStackTrace();
		} catch (MethodInvocationException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (success) {
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setUserAccessor(UserAccessor ua) {
		this.ua = ua;
	}

}
