package org.blueoxygen.cimande.role;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.site.Site;
import org.blueoxygen.cimande.role.RoleSite;

/**
 * 
 * @author 
 * @hibernate.class table="role_site"
 */
@Entity()
@Table(name="role_site")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class RoleSite extends DefaultPersistent{
	
	private Role role;
//	private String rsite_id;
	private Site site;
	
	
	/**
	 * 
	 * @hibernate.many-to-one column="role_id"
	 */
	@ManyToOne
	@JoinColumn(name="role_id")
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}

//	/**
//	 * 
//	 * @hibernate.property
//	 */
//	public String getRsite_id() {
//		return rsite_id;
//	}
//	public void setRsite_id(String rsite_id) {
//		this.rsite_id = rsite_id;
//	}
	
	/**
	 * 
	 * @hibernate.many-to-one column="site_id"
	 */
	@ManyToOne
	@JoinColumn(name="rsite_id")
	public Site getSite() {
		return site;
	}
	public void setSite(Site site) {
		this.site = site;
	}
	
}
