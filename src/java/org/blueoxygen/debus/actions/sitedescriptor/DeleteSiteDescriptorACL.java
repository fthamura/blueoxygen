package org.blueoxygen.debus.actions.sitedescriptor;

import org.blueoxygen.debus.entity.SiteDescriptorACLAccess;

public class DeleteSiteDescriptorACL extends SiteDescriptorACLForm {
	public String execute() {
		if (getSiteDescriptorAccess().getId() != null
				&& !"".equalsIgnoreCase(getSiteDescriptorAccess().getId())) {
			setSiteDescriptorAccess((SiteDescriptorACLAccess) manager.getById(
					SiteDescriptorACLAccess.class, getSiteDescriptorAccess()
							.getId()));
			manager.remove(getSiteDescriptorAccess());
		}
		return SUCCESS;
	}
}
