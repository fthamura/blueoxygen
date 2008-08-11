package org.blueoxygen.debus.actions.sitedescriptor;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.site.Site;
import org.blueoxygen.debus.entity.SiteDescriptorACL;
import org.blueoxygen.debus.entity.SiteDescriptorACLAccess;

public class SiteDescriptorACLForm extends CimandeAction {
	private Site site = new Site();
	private Descriptor descriptor = new Descriptor();
	private List<String> aclId = new ArrayList<String>();
//	private List<String> descriptorId = new ArrayList<String>();
//	private List<String> siteId = new ArrayList<String>();
	private SiteDescriptorACL siteDescriptor = new SiteDescriptorACL();
	private SiteDescriptorACLAccess siteDescriptorAccess = new SiteDescriptorACLAccess();
	private List<SiteDescriptorACLAccess> sdAccesses = new ArrayList<SiteDescriptorACLAccess>();
	private List<GxDroplistValue> acls = new ArrayList<GxDroplistValue>();
	private List<String> accesses = new ArrayList<String>();
	
	public String execute() {
		if (getSiteDescriptorAccess().getId() != null
				&& !"".equalsIgnoreCase(getSiteDescriptorAccess().getId())) {
			setSiteDescriptorAccess((SiteDescriptorACLAccess) manager.getById(
					SiteDescriptorACLAccess.class, getSiteDescriptorAccess()
							.getId()));
		}
		setAcls(manager.getList("SELECT acl FROM " + GxDroplistValue.class.getName() + " acl WHERE acl.name.id='ff80808115f0cf5a0115f0d214ed0002'", null, null));
		return SUCCESS;
	}

	public Site getSite() {
		return site;
	}

	public void setSite(Site site) {
		this.site = site;
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

	public SiteDescriptorACL getSiteDescriptor() {
		return siteDescriptor;
	}

	public void setSiteDescriptor(SiteDescriptorACL siteDescriptor) {
		this.siteDescriptor = siteDescriptor;
	}

	public SiteDescriptorACLAccess getSiteDescriptorAccess() {
		return siteDescriptorAccess;
	}

	public void setSiteDescriptorAccess(
			SiteDescriptorACLAccess siteDescriptorAccess) {
		this.siteDescriptorAccess = siteDescriptorAccess;
	}

	public List<SiteDescriptorACLAccess> getSdAccesses() {
		return sdAccesses;
	}

	public void setSdAccesses(List<SiteDescriptorACLAccess> sdAccesses) {
		this.sdAccesses = sdAccesses;
	}

	public List<GxDroplistValue> getAcls() {
		return acls;
	}

	public void setAcls(List<GxDroplistValue> acls) {
		this.acls = acls;
	}

	public List<String> getAccesses() {
		return accesses;
	}

	public void setAccesses(List<String> accesses) {
		this.accesses = accesses;
	}
}
