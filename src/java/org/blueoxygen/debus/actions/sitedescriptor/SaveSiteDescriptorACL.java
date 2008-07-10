package org.blueoxygen.debus.actions.sitedescriptor;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.site.Site;
import org.blueoxygen.debus.entity.SiteDescriptorACL;

public class SaveSiteDescriptorACL extends SiteDescriptorACLForm {

	public String execute() {
		if (getSite().getId() != null
				&& !"".equalsIgnoreCase(getSite().getId())) {
			setSite((Site) manager.getById(Site.class, getSite().getId()));
		}
		if (getDescriptor().getId() != null
				&& !"".equalsIgnoreCase(getDescriptor().getId())) {
			setDescriptor((Descriptor) manager.getById(Descriptor.class,
					getDescriptor().getId()));
		}
		List<SiteDescriptorACL> sds = manager.getList("SELECT sd FROM "
				+ SiteDescriptorACL.class.getName() + " sd WHERE sd.site.id='"
				+ getSite().getId() + "' AND sd.descriptor.id='"
				+ getDescriptor().getId() + "'", null, null);
		if (sds.isEmpty()) {
			manager.save(getSiteDescriptor());
		} else {
			for (SiteDescriptorACL sd : sds) {
				setSiteDescriptor(sd);
			}
		}
		GxDroplistValue acl;
		for (String id : getAclId()) {
			acl = (GxDroplistValue) manager.getById(GxDroplistValue.class, id);
			getSiteDescriptorAccess().setAcl(acl);
			getSiteDescriptorAccess().setSiteDescriptor(getSiteDescriptor());
			getSiteDescriptorAccess().setLogInformation(
					new LogInformation(sessionCredentials.getCurrentUser()
							.getId(), 1));
		}
		return SUCCESS;
	}
}
