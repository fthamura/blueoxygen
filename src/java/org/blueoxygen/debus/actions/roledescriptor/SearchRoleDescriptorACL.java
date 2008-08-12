package org.blueoxygen.debus.actions.roledescriptor;

import org.blueoxygen.debus.entity.RoleDescriptorACLAccess;

public class SearchRoleDescriptorACL extends RoleDescriptorACLForm {

	private String orderBy = "roleDescriptor.role.name";
	
	public String execute() {
		boolean whereWord = false;
		String query = "SELECT rda FROM "
				+ RoleDescriptorACLAccess.class.getName() + " rda ";
		if (getRole().getId() != null
				&& !"".equalsIgnoreCase(getRole().getId())) {
			query += " WHERE rda.roleDescriptor.role.id='" + getRole().getId() + "' ";
			whereWord = true;
		}
		if (getDescriptor().getId() != null
				&& !"".equalsIgnoreCase(getDescriptor().getId())) {
			query += whereWord ? "AND " : "WHERE ";
			query += "rda.roleDescriptor.descriptor.id='" + getDescriptor().getId() + "' ";
		}
		query += "ORDER BY rda." + orderBy ;
		setRdAccesses(manager.getList(query, null, null));
		return SUCCESS;
	}

}
