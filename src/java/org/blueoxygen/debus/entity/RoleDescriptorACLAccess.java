package org.blueoxygen.debus.entity;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;

@Entity
@Table(name="role_descriptor_acl_access")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class RoleDescriptorACLAccess extends DefaultPersistence {
	private RoleDescriptorACL roleDescriptor;
	private GxDroplistValue acl;

	@ManyToOne
	@JoinColumn(name="role_description_acl_id")
	public RoleDescriptorACL getRoleDescriptor() {
		return roleDescriptor;
	}
	public void setRoleDescriptor(RoleDescriptorACL roleDescriptor) {
		this.roleDescriptor = roleDescriptor;
	}
	@ManyToOne
	@JoinColumn(name="acl_id")
	public GxDroplistValue getAcl() {
		return acl;
	}
	public void setAcl(GxDroplistValue acl) {
		this.acl = acl;
	}
}
