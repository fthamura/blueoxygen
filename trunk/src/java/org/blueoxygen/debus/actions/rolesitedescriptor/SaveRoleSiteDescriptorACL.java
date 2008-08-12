package org.blueoxygen.debus.actions.rolesitedescriptor;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.debus.entity.RoleSiteDescriptorACLAccess;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;

public class SaveRoleSiteDescriptorACL extends RoleSiteDescriptorACLForm {

	@Validations(requiredStrings = { @RequiredStringValidator(fieldName = "roleSite.id", message = "Select role and site please!") })
	public String execute() {
		if (getRoleSite().getId() != null
				&& !"".equalsIgnoreCase(getRoleSite().getId())) {
			setRoleSite((RoleSite) manager.getById(RoleSite.class,
					getRoleSite().getId()));
		}
		if (getDescriptor().getId() != null
				&& !"".equalsIgnoreCase(getDescriptor().getId())) {
			setDescriptor((Descriptor) manager.getById(Descriptor.class,
					getDescriptor().getId()));
		}
		getRsDescriptor().setDescriptor(getDescriptor());
		getRsDescriptor().setRoleSite(getRoleSite());
		getRsDescriptor().setLogInformation(
				new LogInformation(getCurrentUser().getId(), 1));
		manager.save(getRsDescriptor());
		GxDroplistValue acl = new GxDroplistValue();
		for (String aclId : getAccesses()) {
			acl = (GxDroplistValue) manager.getById(GxDroplistValue.class,
					aclId);
			setRsDescriptorAccess(new RoleSiteDescriptorACLAccess());
			getRsDescriptorAccess().setAcl(acl);
			getRsDescriptorAccess().setRsDescriptor(getRsDescriptor());
			getRsDescriptorAccess().setLogInformation(
					new LogInformation(getCurrentUser().getId(), 1));
			manager.save(getRsDescriptorAccess());
		}
		return SUCCESS;
	}
}
