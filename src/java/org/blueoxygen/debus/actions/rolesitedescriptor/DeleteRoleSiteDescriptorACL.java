package org.blueoxygen.debus.actions.rolesitedescriptor;

import org.blueoxygen.debus.entity.RoleSiteDescriptorACLAccess;

public class DeleteRoleSiteDescriptorACL extends RoleSiteDescriptorACLForm {
	public String execute() {
		if (getRsDescriptorAccess().getId() != null
				&& !"".equalsIgnoreCase(getRsDescriptorAccess().getId())) {
			setRsDescriptorAccess((RoleSiteDescriptorACLAccess) manager
					.getById(RoleSiteDescriptorACLAccess.class,
							getRsDescriptorAccess().getId()));
			manager.remove(getRsDescriptorAccess());
		}
		return SUCCESS;
	}
}
