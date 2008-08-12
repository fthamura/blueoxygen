package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.hibernate.annotations.Type;

@Entity
@Table(name="gx_window_role_access")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GxWindowRoleAccess extends DefaultPersistence {
	private GxDroplistValue accessName;
	private GxWindowRole windowRole;
	private boolean allowed;
	
	@ManyToOne
	@JoinColumn(name="dv_access_name_id")
	public GxDroplistValue getAccessName() {
		return accessName;
	}
	public void setAccessName(GxDroplistValue accessName) {
		this.accessName = accessName;
	}
	@ManyToOne
	@JoinColumn(name="window_role_id")
	public GxWindowRole getWindowRole() {
		return windowRole;
	}
	public void setWindowRole(GxWindowRole windowRole) {
		this.windowRole = windowRole;
	}
	@Column
	@Type(type="yes_no")
	public boolean isAllowed() {
		return allowed;
	}
	public void setAllowed(boolean allowed) {
		this.allowed = allowed;
	}
}
