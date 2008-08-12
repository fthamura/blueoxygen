package org.blueoxygen.debus.entity;

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
@Table(name="role_descriptor_acl")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class RoleDescriptorACL extends DefaultPersistence {
	private Role role;
	private Descriptor descriptor;

	@ManyToOne
	@JoinColumn(name="role_id")
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	@ManyToOne
	@JoinColumn(name="descriptor_id")
	public Descriptor getDescriptor() {
		return descriptor;
	}
	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}
}
