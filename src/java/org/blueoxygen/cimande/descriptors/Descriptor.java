/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.descriptors;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;
import org.blueoxygen.cimande.gx.entity.GxWindow;



/**
 * @author Umar Khatab umar@intercitra.com
 *
 * @hibernate.class table="descriptor"
 */
@Entity()
@Table(name="descriptor")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Descriptor extends DefaultPersistence {
	private String name;
	private String description;
	private String urlDescriptor = "";
	private String urlAction = "";
	private GxWindow window;
	private int descriptorFlag = DESCRIPTOR_YES;
	private int typeFlag = TYPE_ACTION;

//	private DescriptorGroup descriptorGroup = new DescriptorGroup();
//	private Collection collectionDefault = new Collection();
//	private Wizard wizard = new Wizard();
	public final static int TYPE_WINDOW = 3;
	public final static int TYPE_WW = 2;
	public final static int TYPE_ACTION = 1;
	public final static int TYPE_CDML = 0;
	public final static int DESCRIPTOR_YES = 1;
	public final static int DESCRIPTOR_NO = 0;

	
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
	 * @return Returns the urlAction.
	 * @hibernate.property column="url_action"
	 */
	@Column(name="url_action")
	public String getUrlAction() {
		return urlAction;
	}
	/**
	 * @param urlAction The urlAction to set.
	 */
	public void setUrlAction(String urlAction) {
		this.urlAction = urlAction;
	}
	/**
	 * @return Returns the urlDescriptor.
	 * @hibernate.property column="url_descriptor"
	 */
	@Column(name="url_descriptor")
	public String getUrlDescriptor() {
		return urlDescriptor;
	}
	/**
	 * @param urlDescriptor The urlDescriptor to set.
	 */
	public void setUrlDescriptor(String urlDescriptor) {
		this.urlDescriptor = urlDescriptor;
	}


	/**
	 * @return Returns the descriptorFlag.
	 * @hibernate.property column="descriptor_flag"
	 */
	@Column(name="descriptor_flag")
	public int getDescriptorFlag() {
		return descriptorFlag;
	}
	/**
	 * @param descriptorFlag The descriptorFlag to set.
	 */
	public void setDescriptorFlag(int descriptorFlag) {
		this.descriptorFlag = descriptorFlag;
	}
	/**
	 * @return Returns the typeFlag.
	 * @hibernate.property column="type_flag"
	 */
	@Column(name="type_flag")
	public int getTypeFlag() {
		return typeFlag;
	}
	/**
	 * @param typeFlag The typeFlag to set.
	 */
	public void setTypeFlag(int typeFlag) {
		this.typeFlag = typeFlag;
	}
	
	@ManyToOne
	@JoinColumn(name="window_id")
	public GxWindow getWindow() {
		return window;
	}
	public void setWindow(GxWindow window) {
		this.window = window;
	}
}
