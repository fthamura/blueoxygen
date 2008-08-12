package org.blueoxygen.debus.actions.sitedescriptor;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.site.Site;
import org.blueoxygen.debus.entity.SiteDescriptorACLAccess;

public class SaveSiteDescriptorACL extends SiteDescriptorACLForm {

	public String execute() {
		if (getSite().getId() != null
				&& !"".equalsIgnoreCase(getSite().getId().trim())) {
			setSite((Site) manager.getById(Site.class, getSite().getId()));
		}
		if (getDescriptor().getId() != null
				&& !"".equalsIgnoreCase(getDescriptor().getId())) {
			setDescriptor((Descriptor) manager.getById(Descriptor.class,
					getDescriptor().getId()));
		}
		getSiteDescriptor().setSite(getSite());
		getSiteDescriptor().setDescriptor(getDescriptor());
		getSiteDescriptor().setLogInformation(
				new LogInformation(getCurrentUser().getId(), 1));

		manager.save(getSiteDescriptor());
		GxDroplistValue acl = new GxDroplistValue();
		for (String aclId : getAccesses()) {
			acl = (GxDroplistValue) manager.getById(GxDroplistValue.class,
					aclId);
			setSiteDescriptorAccess(new SiteDescriptorACLAccess());
			getSiteDescriptorAccess().setSiteDescriptor(getSiteDescriptor());
			getSiteDescriptorAccess().setLogInformation(
					new LogInformation(getCurrentUser().getId(), 1));
			getSiteDescriptorAccess().setAcl(acl);
			manager.save(getSiteDescriptorAccess());
		}
		return SUCCESS;
	}
}
