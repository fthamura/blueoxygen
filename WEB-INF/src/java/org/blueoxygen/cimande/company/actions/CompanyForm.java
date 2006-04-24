/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.company.actions;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;


import com.opensymphony.xwork.ActionSupport;

/**
 * @author Gurki
 */
public class CompanyForm extends ActionSupport implements PersistenceAware
{
	protected PersistenceManager pm;
	private String id;
	private String name="";
	private String address="";
	private String state="";
	private String zip_number="";
	private String telephone="";
	private String faximile="";
	private String website="";
	private String email="";
	
	
	
	

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
		
	}





	public String getAddress() {
		return address;
	}





	public void setAddress(String address) {
		this.address = address;
	}





	public String getEmail() {
		return email;
	}





	public void setEmail(String email) {
		this.email = email;
	}





	public String getFaximile() {
		return faximile;
	}





	public void setFaximile(String faximile) {
		this.faximile = faximile;
	}





	public String getId() {
		return id;
	}





	public void setId(String id) {
		this.id = id;
	}





	public String getName() {
		return name;
	}





	public void setName(String name) {
		this.name = name;
	}





	public String getState() {
		return state;
	}





	public void setState(String state) {
		this.state = state;
	}





	public String getTelephone() {
		return telephone;
	}





	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}





	public String getWebsite() {
		return website;
	}





	public void setWebsite(String website) {
		this.website = website;
	}





	public String getZip_number() {
		return zip_number;
	}





	public void setZip_number(String zip_number) {
		this.zip_number = zip_number;
	}
	
	
}