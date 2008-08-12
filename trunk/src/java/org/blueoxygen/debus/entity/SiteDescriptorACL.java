package org.blueoxygen.debus.entity;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.site.Site;

@Entity
@Table(name="site_descriptor_acl")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class SiteDescriptorACL extends DefaultPersistence {
	private Site site;
	private Descriptor descriptor;
	
	@ManyToOne
	@JoinColumn(name="site_acl_id")
	public Site getSite() {
		return site;
	}
	public void setSite(Site site) {
		this.site = site;
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
