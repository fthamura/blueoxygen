/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.role;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;


/**
 * @author ginanjar
 *
 * @hibernate.class table="workflow_role"
 */
@Entity()
@Table(name="workflow_role")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Role extends DefaultPersistent {
	private String name;
	private String description;
	private List<RolePrivilage> rolePrivilage = new ArrayList<RolePrivilage>();
	//private String site_id;
	
	
	/**
	 * @return Returns the description.
	 * @hibernate.property length="125"
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
	 * @return Returns the name.
	 * @hibernate.property length="50"
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
	 * @return Returns the rolePrivilage.
	 * @hibernate.bag table="role_privilage" lazy="false" cascade="all" inverse="true"
	 * @hibernate.collection-one-to-many class="org.blueoxygen.cimande.role.RolePrivilage"
	 * @hibernate.collection-key column="role_id"
	 */
	@OneToMany(mappedBy="role", cascade={CascadeType.ALL})
	public List<RolePrivilage> getRolePrivilage() {
		return rolePrivilage;
	}
	/**
	 * @param rolePrivilage The rolePrivilage to set.
	 */
	public void setRolePrivilage(List<RolePrivilage> rolePrivilage) {
		this.rolePrivilage = rolePrivilage;
	}
//	/**
//	 * 
//	 * @hibernate.property
//	 */
//	public String getSite_id() {
//		return site_id;
//	}
//	public void setSite_id(String site_id) {
//		this.site_id = site_id;
//	}
	
}
