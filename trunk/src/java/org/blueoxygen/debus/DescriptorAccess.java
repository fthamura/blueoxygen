package org.blueoxygen.debus;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.role.Role;

@Entity
@Table(name = "debus_descriptor_access")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class DescriptorAccess extends DefaultPersistence {
	private Descriptor descriptor;
	private Role role;
	private ActionType action;
	private PermissionType permission;

	@ManyToOne
	@JoinColumn(name = "descriptor_id")
	public Descriptor getDescriptor() {
		return descriptor;
	}

	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}

	@ManyToOne
	@JoinColumn(name = "role_id")
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@ManyToOne
	@JoinColumn(name = "action_id")
	public ActionType getAction() {
		return action;
	}

	public void setAction(ActionType action) {
		this.action = action;
	}

	@ManyToOne
	@JoinColumn(name = "permission_id")
	public PermissionType getPermission() {
		return permission;
	}

	public void setPermission(PermissionType permission) {
		this.permission = permission;
	}

}
