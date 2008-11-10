package org.blueoxygen.debus.actions.rolesitedescriptor;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.cimande.site.Site;
import org.blueoxygen.debus.entity.RoleDescriptorACLAccess;
import org.blueoxygen.debus.entity.RoleSiteDescriptorACL;
import org.blueoxygen.debus.entity.RoleSiteDescriptorACLAccess;

public class RoleSiteDescriptorACLForm extends CimandeAction {
	private RoleSiteDescriptorACL rsDescriptor = new RoleSiteDescriptorACL();
	private RoleSiteDescriptorACLAccess rsDescriptorAccess = new RoleSiteDescriptorACLAccess();
	private List<RoleSiteDescriptorACLAccess> rsdaccesses = new ArrayList<RoleSiteDescriptorACLAccess>();
	private Role role = new Role();
	private RoleSite roleSite = new RoleSite();
	private Descriptor descriptor = new Descriptor();
//	private GxDroplistValue acl = new GxDroplistValue();
	private List<String> accesses = new ArrayList<String>();
	private List<GxDroplistValue> acls = new ArrayList<GxDroplistValue>();
	private List<RoleSite> roleSites = new ArrayList<RoleSite>();
	private List<Role> roles = new ArrayList<Role>();
	private User user = new User();
	private String workType="";

	public String execute() {
		user = (User) manager.getById(User.class, getCurrentUser().getId());
		if(user.getWorkspace_type().equalsIgnoreCase("flat")){
			workType = "flat";
		}else{
			workType = "";
		}
		if (getRsDescriptorAccess().getId() != null
				&& !"".equalsIgnoreCase(getRsDescriptorAccess().getId())) {
			setRsDescriptorAccess((RoleSiteDescriptorACLAccess) manager
					.getById(RoleSiteDescriptorACLAccess.class,
							getRsDescriptorAccess().getId()));
		}
		setRoles(manager.findAll(Role.class));
		setAcls(manager.getList("SELECT acl FROM " + GxDroplistValue.class.getName() + " acl WHERE acl.name.id='ff80808115f0cf5a0115f0d214ed0002'", null, null));
		return SUCCESS;
	}

	public String selectRole() {
		if (getRole().getId() != null
				&& !"".equalsIgnoreCase(getRole().getId())) {
			setRole((Role) manager.getById(Role.class, getRole().getId()));
			setRoleSites(manager.getList("SELECT rs FROM "
					+ RoleSite.class.getName() + " rs WHERE rs.role.id='"
					+ getRole().getId() + "'", null, null));
		}
		return execute();
	}

	public List<RoleSite> getRoleSites() {
		return roleSites;
	}

	public void setRoleSites(List<RoleSite> roleSites) {
		this.roleSites = roleSites;
	}

	public RoleSiteDescriptorACL getRsDescriptor() {
		return rsDescriptor;
	}

	public void setRsDescriptor(RoleSiteDescriptorACL rsDescriptor) {
		this.rsDescriptor = rsDescriptor;
	}

	public RoleSiteDescriptorACLAccess getRsDescriptorAccess() {
		return rsDescriptorAccess;
	}

	public void setRsDescriptorAccess(
			RoleSiteDescriptorACLAccess rsDescriptorAccess) {
		this.rsDescriptorAccess = rsDescriptorAccess;
	}

	public List<RoleSiteDescriptorACLAccess> getRsdaccesses() {
		return rsdaccesses;
	}

	public void setRsdaccesses(List<RoleSiteDescriptorACLAccess> rsdaccesses) {
		this.rsdaccesses = rsdaccesses;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public RoleSite getRoleSite() {
		return roleSite;
	}

	public void setRoleSite(RoleSite roleSite) {
		this.roleSite = roleSite;
	}

	public Descriptor getDescriptor() {
		return descriptor;
	}

	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}

//	public GxDroplistValue getAcl() {
//		return acl;
//	}
//
//	public void setAcl(GxDroplistValue acl) {
//		this.acl = acl;
//	}
//
	public List<String> getAccesses() {
		return accesses;
	}

	public void setAccesses(List<String> accesses) {
		this.accesses = accesses;
	}

	public List<GxDroplistValue> getAcls() {
		return acls;
	}

	public void setAcls(List<GxDroplistValue> acls) {
		this.acls = acls;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getWorkType() {
		return workType;
	}

	public void setWorkType(String workType) {
		this.workType = workType;
	}
	
	
}
