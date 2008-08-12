package org.blueoxygen.debus.actions.rolesitedescriptor;

import org.blueoxygen.debus.entity.RoleSiteDescriptorACLAccess;

public class SearchRoleSiteDescriptorACL extends RoleSiteDescriptorACLForm {
	
	private String orderBy = "rsDescriptor.roleSite.role.name";
	
	public String execute() {
		boolean whereWord = false;
		StringBuilder query = new StringBuilder("SELECT rsda FROM "
				+ RoleSiteDescriptorACLAccess.class.getName() + " rsda ");
		if (getRole().getId() != null
				&& !"".equalsIgnoreCase(getRole().getId())) {
			query.append(" WHERE rsda.rsDescriptor.roleSite.role.id='" + getRole().getId() + "' ");
			whereWord = true;
		}
		if (getRoleSite().getId() != null
				&& !"".equalsIgnoreCase(getRole().getId())) {
			query.append(whereWord ? "AND " : "WHERE ");
			query.append(" rsda.rsDescriptor.roleSite.id='" + getRoleSite().getId() + "' ");
			whereWord = true;
		}
		if (getDescriptor().getId() != null
				&& !"".equalsIgnoreCase(getDescriptor().getId())) {
			query.append(whereWord ? "AND " : "WHERE ");
			query.append("rsda.rsDescriptor.descriptor.id='" + getDescriptor().getId() + "' ");
			whereWord = true;
		}
		query.append("ORDER BY rsda." + orderBy );
		setRsdaccesses(manager.getList(query.toString(), null, null));
		return SUCCESS;
	}
}
