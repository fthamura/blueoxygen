package org.blueoxygen.debus.entity;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.role.RoleSite;

@Entity
@Table(name="rs_descriptor_acl")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class RoleSiteDescriptorACL extends DefaultPersistence {
	private RoleSite roleSite;
	private Descriptor descriptor;

	@ManyToOne
	@JoinColumn(name="role_site_id")
	public RoleSite getRoleSite() {
		return roleSite;
	}
	public void setRoleSite(RoleSite roleSite) {
		this.roleSite = roleSite;
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
