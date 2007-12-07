package org.blueoxygen.cimande.gx.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.role.Role;

@Entity
@Table(name="gx_window_role")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GxWindowRole extends DefaultPersistence {
	private Role role;
	private GxWindow window;
	private List<GxWindowRoleAccess> access = new ArrayList<GxWindowRoleAccess>();
	
	@ManyToOne
	@JoinColumn(name="role_id")
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	@ManyToOne
	@JoinColumn(name="window_id")
	public GxWindow getWindow() {
		return window;
	}
	public void setWindow(GxWindow window) {
		this.window = window;
	}
	@OneToMany(mappedBy="windowRole", fetch=FetchType.EAGER)
	public List<GxWindowRoleAccess> getAccess() {
		return access;
	}
	public void setAccess(List<GxWindowRoleAccess> access) {
		this.access = access;
	}
	
}
