package org.blueoxygen.debus.actions.roledescriptor;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.debus.entity.RoleDescriptorACL;
import org.blueoxygen.debus.entity.RoleDescriptorACLAccess;

public class RoleDescriptorACLForm extends CimandeAction implements PersistenceAware {
	private RoleDescriptorACL roleDescriptor = new RoleDescriptorACL();
	private RoleDescriptorACLAccess roleDescriptorAccess = new RoleDescriptorACLAccess();
	private List<RoleDescriptorACLAccess> rdAccesses = new ArrayList<RoleDescriptorACLAccess>();
	private Role role = new Role();
	private Descriptor descriptor = new Descriptor();
//	private GxDroplistValue acl = new GxDroplistValue();
	private List<String> accesses = new ArrayList<String>();
	private List<GxDroplistValue> acls = new ArrayList<GxDroplistValue>();
	private User user = new User();
	private String workType="";
	protected PersistenceManager pm;
	
	public String execute() {
		user = (User) pm.getById(User.class, getCurrentUser().getId());
		if(user.getWorkspace_type().equalsIgnoreCase("flat")){
			workType = "flat";
		}else{
			workType = "";
		}
		if (getRoleDescriptorAccess().getId() != null
				&& !"".equalsIgnoreCase(getRoleDescriptorAccess().getId())) {
			setRoleDescriptorAccess((RoleDescriptorACLAccess) pm.getById(
					RoleDescriptorACLAccess.class, getRoleDescriptorAccess()
							.getId()));
		}
		setAcls(pm.getList("SELECT acl FROM " + GxDroplistValue.class.getName() + " acl WHERE acl.name.id='ff80808115f0cf5a0115f0d214ed0002'", null, null));
		return SUCCESS;
	}

	public RoleDescriptorACL getRoleDescriptor() {
		return roleDescriptor;
	}

	public void setRoleDescriptor(RoleDescriptorACL rdacl) {
		this.roleDescriptor = rdacl;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Descriptor getDescriptor() {
		return descriptor;
	}

	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}

	public RoleDescriptorACLAccess getRoleDescriptorAccess() {
		return roleDescriptorAccess;
	}

	public void setRoleDescriptorAccess(
			RoleDescriptorACLAccess roleDescriptorAccess) {
		this.roleDescriptorAccess = roleDescriptorAccess;
	}

	public List<RoleDescriptorACLAccess> getRdAccesses() {
		return rdAccesses;
	}

	public void setRdAccesses(List<RoleDescriptorACLAccess> rdAccesses) {
		this.rdAccesses = rdAccesses;
	}

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
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
		
	}
	public PersistenceManager getPersistenceManager() {
		return pm;
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
