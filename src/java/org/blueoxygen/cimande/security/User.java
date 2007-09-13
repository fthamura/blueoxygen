/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.security;



import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;
/**
 * A very simple user. 
 * @hibernate.class table="backend_user"
 */
@Entity()
@Table(name="backend_user")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class User extends DefaultPersistent {
	private String username;
	private String password;
	private String role_id;
	private Name name = new Name();
	private Address address = new Address();
	
	public User(){
	    
	}
	/**
	 * @hibernate.property length="128"
	 */
	public String getUsername() {
	   
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * Password of user 
	 * @hibernate.property length="30"
	 */
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @hibernate.component
	 */
	@Embedded
	public Name getName() {
		return name;
	}
	public void setName(Name name) {
		this.name = name;
	}
	/**
	 * @hibernate.component
	 */
	@Embedded
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	/**
	 * @hibernate.property
	 */
	public String getRole_id() {
		return role_id;
	}
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}

	
}