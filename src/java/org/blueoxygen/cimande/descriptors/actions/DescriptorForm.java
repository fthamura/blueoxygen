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

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.descriptors.DescriptorModule;
import org.blueoxygen.cimande.gx.entity.GxDroplistName;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
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
	private DescriptorModule descriptorModule = new DescriptorModule();
	private List<DescriptorModule> descriptorModules = new ArrayList<DescriptorModule>();
	private List<String> options = new ArrayList<String>();
	private GxDroplistName droplistName = new GxDroplistName();
	private GxDroplistValue droplistValue = new GxDroplistValue();
	private List<GxDroplistName> droplistValues = new ArrayList<GxDroplistName>();
	protected String idDroplist="ff80818124089247012408b06d5e0006";
	
	public String execute(){
		user = (User) pm.getById(User.class, getCurrentUser().getId());
		if(user.getWorkspace_type().equalsIgnoreCase("flat")){
			workType = "flat";
		}else{
			workType = "";
		}
		
		setDroplistValues(pm.getList("SELECT d FROM "+GxDroplistValue.class.getName()+" d WHERE d.name.id= '"+idDroplist+"'", null, null));
		return SUCCESS;
	}
	
	
	public List<DescriptorModule> getDescriptorModules() {
		return descriptorModules;
	}


	public void setDescriptorModules(List<DescriptorModule> descriptorModules) {
		this.descriptorModules = descriptorModules;
	}


	public GxDroplistName getDroplistName() {
		return droplistName;
	}


	public void setDroplistName(GxDroplistName droplistName) {
		this.droplistName = droplistName;
	}


	public GxDroplistValue getDroplistValue() {
		return droplistValue;
	}


	public void setDroplistValue(GxDroplistValue droplistValue) {
		this.droplistValue = droplistValue;
	}


	public List<GxDroplistName> getDroplistValues() {
		return droplistValues;
	}


	public void setDroplistValues(List<GxDroplistName> droplistValues) {
		this.droplistValues = droplistValues;
	}


	public DescriptorModule getDescriptorModule() {
		return descriptorModule;
	}


	public void setDescriptorModule(DescriptorModule descriptorModule) {
		this.descriptorModule = descriptorModule;
	}


	public List<String> getOptions() {
		return options;
	}


	public void setOptions(List<String> options) {
		this.options = options;
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