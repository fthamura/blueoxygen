package org.blueoxygen.cimande.gx.access;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.actions.GxAction;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxWindowRole;
import org.blueoxygen.cimande.role.Role;

public class WindowRoleForm extends GxAction {
	private GxWindowRole windowRole = new GxWindowRole();
	private List<GxWindowRole> windowRoles = new ArrayList<GxWindowRole>();
	private List<GxDroplistValue> accessList = new ArrayList<GxDroplistValue>();
	private List<String> access = new ArrayList<String>();
	private Role role = new Role();

	public String execute() {
		if (getWindowRole().getId() != null
				&& !"".equalsIgnoreCase(getWindowRole().getId())) {
			setWindowRole((GxWindowRole) manager.getById(GxWindowRole.class,
					getWindowRole().getId()));
		}
		setAccessList(manager.getList("SELECT acl FROM "
				+ GxDroplistValue.class.getName()
				+ " acl WHERE acl.name.id='ff80808115f0cf5a0115f0d214ed0002'",
				null, null));
		return SUCCESS;
	}

	public GxWindowRole getWindowRole() {
		return windowRole;
	}

	public void setWindowRole(GxWindowRole windowRole) {
		this.windowRole = windowRole;
	}

	public List<GxWindowRole> getWindowRoles() {
		return windowRoles;
	}

	public void setWindowRoles(List<GxWindowRole> windowRoles) {
		this.windowRoles = windowRoles;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List<GxDroplistValue> getAccessList() {
		return accessList;
	}

	public void setAccessList(List<GxDroplistValue> accessList) {
		this.accessList = accessList;
	}

	public List<String> getAccess() {
		return access;
	}

	public void setAccess(List<String> access) {
		this.access = access;
	}
}
