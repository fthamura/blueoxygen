/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.descriptors.actions;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.User;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Umar Khatab umar@intercitra.com
 */
public class DescriptorForm extends CimandeAction implements PersistenceAware {
	protected PersistenceManager pm;
	private User user = new User();
	private String id;
	private String name="";
	private String description="";
	private String urlDescriptor = "";
	private String urlAction = "";
	private String descriptorGroupId = "";
	private int descriptorFlag = -1;
	private int typeFlag = -1;
	private String collectionDefaultId = "";
	private String wizardId = "";
	private String windowId = "";
	private int activeFlag = -1;
	protected Descriptor descr = new Descriptor();
	private String workType="";
	
	public String execute(){
		user = (User) pm.getById(User.class, getCurrentUser().getId());
		if(user.getWorkspace_type().equalsIgnoreCase("flat")){
			workType = "flat";
		}else{
			workType = "";
		}
		return SUCCESS;
	}
	

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
	
	public String getCollectionDefaultId() {
		return collectionDefaultId;
	}

	public void setCollectionDefaultId(String collectionDefaultId) {
		this.collectionDefaultId = collectionDefaultId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getDescriptorFlag() {
		return descriptorFlag;
	}

	public void setDescriptorFlag(int descriptorFlag) {
		this.descriptorFlag = descriptorFlag;
	}

	public String getDescriptorGroupId() {
		return descriptorGroupId;
	}

	public void setDescriptorGroupId(String descriptorGroupId) {
		this.descriptorGroupId = descriptorGroupId;
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

	public int getTypeFlag() {
		return typeFlag;
	}

	public void setTypeFlag(int typeFlag) {
		this.typeFlag = typeFlag;
	}

	public String getUrlAction() {
		return urlAction;
	}

	public void setUrlAction(String urlAction) {
		this.urlAction = urlAction;
	}

	public String getUrlDescriptor() {
		return urlDescriptor;
	}

	public void setUrlDescriptor(String urlDescriptor) {
		this.urlDescriptor = urlDescriptor;
	}

	public String getWizardId() {
		return wizardId;
	}

	public void setWizardId(String wizardId) {
		this.wizardId = wizardId;
	}
	public int getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}

	public String getWindowId() {
		return windowId;
	}

	public void setWindowId(String windowId) {
		this.windowId = windowId;
	}

	public Descriptor getDescr() {
		return descr;
	}

	public void setDescr(Descriptor descr) {
		this.descr = descr;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public String getWorkType() {
		return workType;
	}


	public void setWorkType(String workType) {
		this.workType = workType;
	}
	
}