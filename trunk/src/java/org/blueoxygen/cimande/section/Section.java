/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.section;


import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.descriptors.Descriptor;

/**
 * @author dwimiyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 * @hibernate.class table="section"
 */
@Entity()
@Table(name="section")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Section extends DefaultPersistence{
	
	private String code;
	private String description;
	private String url_section;

	private Descriptor sectionDescriptor;
	
	/**
	 * @hibernate.many-to-one column="descriptor_id"
	 * @return Returns the sectionDescriptor.
	 */
	@ManyToOne
	public Descriptor getSectionDescriptor() {
		return sectionDescriptor;
	}
	/**
	 * @param sectionDescriptor The sectionDescriptor to set.
	 */
	public void setSectionDescriptor(Descriptor sectionDescriptor) {
		this.sectionDescriptor = sectionDescriptor;
	}
	
	/**
	 * @return Returns the description.
	 * @hibernate.property
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description The description to set.
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return Returns the code.
	 * @hibernate.property length="3"
	 */
	public String getCode() {
		return code;
	}
	/**
	 * @param code The code to set.
	 */
	public void setCode(String code) {
		this.code = code;
	}

	
	/**
	 * 
	 * @hibernate.property
	 * 
	 */
	public String getUrl_section() {
		return url_section;
	}
	public void setUrl_section(String url_section) {
		this.url_section= url_section;
	}

	
}
