package org.blueoxygen.debus.actions.roledescriptor;

import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.debus.entity.RoleDescriptorACL;

import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;

public class SaveRoleDescriptorACL extends RoleDescriptorACLForm {

	@Validations(requiredFields = {
			@RequiredFieldValidator(fieldName = "role.id", message = "Please select Role"),
			@RequiredFieldValidator(fieldName = "acl.id", message = "Please select Access Role"),
			@RequiredFieldValidator(fieldName = "descriptor.id", message = "Please select Descriptor") })
	public String execute() {
		List<RoleDescriptorACL> rds = manager.getList("SELECT rd FROM "
				+ RoleDescriptorACL.class.getName() + " rd WHERE rd.role.id='"
				+ getRole().getId() + "' AND rd.descriptor.id='"
				+ getDescriptor().getId() + "'", null, null);
		if (rds.isEmpty()) {
			if (getRole().getId() != null
					&& !"".equalsIgnoreCase(getRole().getId().trim())) {
				setRole((Role) manager.getById(Role.class, getRole().getId()));
			}
			if (getDescriptor().getId() != null
					&& !"".equalsIgnoreCase(getDescriptor().getId())) {
				setDescriptor((Descriptor) manager.getById(Descriptor.class,
						getDescriptor().getId()));
			}
			getRoleDescriptor().setRole(getRole());
			getRoleDescriptor().setDescriptor(getDescriptor());
			getRoleDescriptor().setLogInformation(
					new LogInformation(getCurrentUser().getId(), 1));

			manager.save(getRoleDescriptor());
		} else {
			for (RoleDescriptorACL rd : rds) {
				setRoleDescriptor(rd);
			}
		}
		if (getAcl().getId() != null
				&& !"".equalsIgnoreCase(getAcl().getId().trim())) {
			setAcl((GxDroplistValue) manager.getById(GxDroplistValue.class,
					getAcl().getId()));
		}
		getRoleDescriptorAccess().setRoleDescriptor(getRoleDescriptor());
		getRoleDescriptorAccess().setLogInformation(new LogInformation(
				getCurrentUser().getId(), 1));
		getRoleDescriptorAccess().setAcl(getAcl());
		manager.save(getRoleDescriptorAccess());
		return SUCCESS;
	}
}
