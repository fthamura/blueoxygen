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
@Table(name="rs_descriptor_acl_access")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class RoleSiteDescriptorACLAccess extends DefaultPersistence {
	private RoleSiteDescriptorACL rsDescriptor;
	private GxDroplistValue acl;
	
	@ManyToOne
	@JoinColumn(name="rs_descriptor_acl_id")
	public RoleSiteDescriptorACL getRsDescriptor() {
		return rsDescriptor;
	}
	public void setRsDescriptor(RoleSiteDescriptorACL rsDescriptor) {
		this.rsDescriptor = rsDescriptor;
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
