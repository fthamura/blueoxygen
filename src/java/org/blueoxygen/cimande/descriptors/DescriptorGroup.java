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
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;

/**
 * @author Umar Khatab umar@intercitra.com
 *
 * @hibernate.class table="descriptor_group"
 */
@Entity()
@Table(name="descriptor_group")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class DescriptorGroup extends DefaultPersistent {
	private String groupId;
	private String folder;
	private String description;

	/**
	 * @return Returns the groupId.
	 * @hibernate.property column="group_id"
	 */
	@Column(name="group_id")
	public String getGroupId() {
		return groupId;
	}
	/**
	 * @param groupId The groupId to set.
	 */
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	/**
	 * @return Returns the folder.
	 * @hibernate.property length="128"
	 */
	public String getFolder() {
		return folder;
	}
	/**
	 * @param folder The folder to set.
	 */
	public void setFolder(String folder) {
		this.folder = folder;
	}
	/**
	 * @return Returns the description.
	 * @hibernate.property length="128"
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

}
