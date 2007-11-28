package org.blueoxygen.cimande.rolesite;

import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RoleSite;

public class DeleteRoleSite extends RoleSiteForm {
	public String execute(){
		if(getRole().getId() != null && !"".equalsIgnoreCase(getRole().getId())){
			setRole((Role) manager.getById(Role.class, getRole().getId()));
			setRolesites(manager.getList("FROM " + RoleSite.class.getName() + " rs " +
					"WHERE rs.role.id='" + getRole().getId() + "'", null, null));
		}
		if(getRolesite().getId() != null && !"".equalsIgnoreCase(getRolesite().getId())){
			setRolesite((RoleSite) manager.getById(RoleSite.class, getRolesite().getId()));
			manager.remove(getRolesite());
		}
		return SUCCESS;
	}
}
