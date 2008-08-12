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

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;

/**
 * @author frans
 *
 * TODO To change the template for this generated type comment go to
 * @hibernate.class table="collection"
 */
@Entity()
@Table(name="collection")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Collection extends DefaultPersistence {

	private String name;
	private String description;
	private String folderName;
	
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
	 * @return Returns the folderName.
	 * @hibernate.property
	 */
	public String getFolderName() {
		return folderName;
	}
	/**
	 * @param folderName The folderName to set.
	 */
	public void setFolderName(String folderName) {
		this.folderName = folderName;
	}
}
