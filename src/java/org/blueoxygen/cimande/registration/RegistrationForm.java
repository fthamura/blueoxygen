package org.blueoxygen.cimande.registration;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.security.User;

public class RegistrationForm extends CimandeAction {
	private User user = new User();
	
	public String execute(){
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
