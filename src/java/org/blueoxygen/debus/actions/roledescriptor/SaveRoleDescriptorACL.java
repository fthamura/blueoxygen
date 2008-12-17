package org.blueoxygen.debus.actions.roledescriptor;

import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.debus.entity.RoleDescriptorACL;
import org.blueoxygen.debus.entity.RoleDescriptorACLAccess;

import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;

public class SaveRoleDescriptorACL extends RoleDescriptorACLForm {

	@Validations(requiredFields = {
			@RequiredFieldValidator(fieldName = "role.id", message = "Please select Role"),
			@RequiredFieldValidator(fieldName = "acl.id", message = "Please select Access Role"),
			@RequiredFieldValidator(fieldName = "descriptor.id", message = "Please select Descriptor") })
	public String execute() {

		if (getRole().getId() != null
				&& !"".equalsIgnoreCase(getRole().getId().trim())) {
			setRole((Role) pm.getById(Role.class, getRole().getId()));
		}
		if (getDescriptor().getId() != null
				&& !"".equalsIgnoreCase(getDescriptor().getId())) {
			setDescriptor((Descriptor) pm.getById(Descriptor.class,
					getDescriptor().getId()));
		}
		getRoleDescriptor().setRole(getRole());
		getRoleDescriptor().setDescriptor(getDescriptor());
		getRoleDescriptor().setLogInformation(
				new LogInformation(getCurrentUser().getId(), 1));

		pm.save(getRoleDescriptor());
		GxDroplistValue acl = new GxDroplistValue();
		for (String aclId : getAccesses()) {
			acl = (GxDroplistValue) pm.getById(GxDroplistValue.class,
					aclId);
			setRoleDescriptorAccess(new RoleDescriptorACLAccess());
			getRoleDescriptorAccess().setRoleDescriptor(getRoleDescriptor());
			getRoleDescriptorAccess().setLogInformation(
					new LogInformation(getCurrentUser().getId(), 1));
			getRoleDescriptorAccess().setAcl(acl);
			pm.save(getRoleDescriptorAccess());
		}
		return SUCCESS;
	}
}
