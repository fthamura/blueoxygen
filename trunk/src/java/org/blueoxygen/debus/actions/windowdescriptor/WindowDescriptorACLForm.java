package org.blueoxygen.debus.actions.windowdescriptor;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.gx.entity.GxWindowRole;
import org.blueoxygen.cimande.gx.entity.GxWindowRoleAccess;
import org.blueoxygen.cimande.site.Site;
import org.blueoxygen.debus.entity.SiteDescriptorACL;
import org.blueoxygen.debus.entity.SiteDescriptorACLAccess;

public class WindowDescriptorACLForm extends CimandeAction {
	private GxWindow window = new GxWindow();
	private Descriptor descriptor = new Descriptor();
	private List<String> aclId = new ArrayList<String>();
	// private List<String> descriptorId = new ArrayList<String>();
	// private List<String> GxWindowId = new ArrayList<String>();
	private GxWindowRole windowRole = new GxWindowRole();
	private GxWindowRoleAccess windowRoleAccess = new GxWindowRoleAccess();
	private List<GxWindowRoleAccess> wrAccesses = new ArrayList<GxWindowRoleAccess>();
	private List<GxDroplistValue> acls = new ArrayList<GxDroplistValue>();

	public String execute() {
		if (getWindowRoleAccess().getId() != null
				&& !"".equalsIgnoreCase(getWindowRoleAccess().getId())) {
			setWindowRoleAccess((GxWindowRoleAccess) manager.getById(
					GxWindowRoleAccess.class, getWindowRoleAccess().getId()));
		}
		setAcls(manager.getList("SELECT acl FROM "
				+ GxDroplistValue.class.getName()
				+ " acl WHERE acl.name.id='ff80808115f0cf5a0115f0d214ed0002'",
				null, null));
		return SUCCESS;
	}

	public GxWindow getWindow() {
		return window;
	}

	public void setWindow(GxWindow window) {
		this.window = window;
	}

	public Descriptor getDescriptor() {
		return descriptor;
	}

	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}

	public List<String> getAclId() {
		return aclId;
	}

	public void setAclId(List<String> aclId) {
		this.aclId = aclId;
	}

	public GxWindowRole getWindowRole() {
		return windowRole;
	}

	public void setWindowRole(GxWindowRole windowRole) {
		this.windowRole = windowRole;
	}

	public GxWindowRoleAccess getWindowRoleAccess() {
		return windowRoleAccess;
	}

	public void setWindowRoleAccess(GxWindowRoleAccess windowRoleAccess) {
		this.windowRoleAccess = windowRoleAccess;
	}

	public List<GxWindowRoleAccess> getWrAccesses() {
		return wrAccesses;
	}

	public void setWrAccesses(List<GxWindowRoleAccess> wrAccesses) {
		this.wrAccesses = wrAccesses;
	}

	public List<GxDroplistValue> getAcls() {
		return acls;
	}

	public void setAcls(List<GxDroplistValue> acls) {
		this.acls = acls;
	}

}
