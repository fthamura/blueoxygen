/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.template;


import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.descriptors.Descriptor;

/**
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 * 
 * @hibernate.class table="template"
 */
public class Template extends DefaultPersistent{
	
	private String name;
	private String description;
	private String url_xsl_template;
	private String folder="";
	private Descriptor Descriptor;

	/**
	 * @return Returns the folder.
	 * @hibernate.property
	 */
	public String getFolder() {
		return folder;
	}
	public void setFolder(String folder) {
		this.folder = folder;
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
	 * @return Returns the descriptor.
	 * @hibernate.many-to-one column="descriptor_id"
	 */
	public Descriptor getDescriptor() {
		return Descriptor;
	}
	/**
	 * @param descriptor The description to set.
	 */
	public void setDescriptor(Descriptor Descriptor) {
		this.Descriptor = Descriptor;
	}
	
	/**
	 * @return Returns the name.
	 * @hibernate.property
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name The name to set.
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return Returns the urlAction.
	 * @hibernate.property column="url_xsl_template"
	 */
	public String getUrl_xsl_template() {
		return url_xsl_template;
	}
	/**
	 * @param url_xsl_template The url_xsl_template to set.
	 */
	public void setUrl_xsl_template(String url_xsl_template) {
		this.url_xsl_template = url_xsl_template;
	}

	
	}
