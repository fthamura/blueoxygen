package org.blueoxygen.debus.entity;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxWindowRole;

@Entity
@Table(name="gx_window_role_access")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GXWindowRoleAccess extends DefaultPersistence {
	private GxWindowRole gxWindowRole;
	private GxDroplistValue acl;

	@ManyToOne
	@JoinColumn(name="gx_window_role_id")
	public GxWindowRole getGxWindowRole() {
		return gxWindowRole;
	}
	public void setGxWindowRole(GxWindowRole gxWindowRole) {
		this.gxWindowRole = gxWindowRole;
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
