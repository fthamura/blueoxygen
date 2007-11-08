package org.blueoxygen.cimande.gx.access;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.actions.GxAction;
import org.blueoxygen.cimande.role.Role;

public class RoleList extends GxAction {
	private List<Role> roles = new ArrayList<Role>();
	
	public String execute(){
		setRoles((ArrayList<Role>)manager.getList("FROM " + Role.class.getName() + " r WHERE r.logInformation.activeFlag=1", null, null));
		return SUCCESS;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

}
