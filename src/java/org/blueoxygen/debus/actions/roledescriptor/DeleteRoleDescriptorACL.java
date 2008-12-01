package org.blueoxygen.debus.actions.roledescriptor;

import org.blueoxygen.debus.entity.RoleDescriptorACLAccess;

import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;

public class DeleteRoleDescriptorACL extends RoleDescriptorACLForm {
	@Validations(requiredFields = { @RequiredFieldValidator(fieldName = "roleDescriptoAccess.id", message = "No Role Descriptor selected") })
	public String execute() {
		if (getRoleDescriptorAccess().getId() != null
				&& !"".equalsIgnoreCase(getRoleDescriptorAccess().getId())) {
			setRoleDescriptorAccess((RoleDescriptorACLAccess) pm.getById(
					RoleDescriptorACLAccess.class, getRoleDescriptorAccess()
							.getId()));
			pm.remove(getRoleDescriptorAccess());
		}
		return SUCCESS;
	}
}
