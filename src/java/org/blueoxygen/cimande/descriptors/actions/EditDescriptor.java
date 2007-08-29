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

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

/**
 * @author Umar Khatab umar@intercitra.com
 */

public class EditDescriptor extends DescriptorForm implements SessionCredentialsAware {

	private SessionCredentials sessCredentials;
	protected List tmp = new ArrayList();

	public String execute() {
		System.out.println("UPDATE");
		Descriptor descr = (Descriptor) pm.getById(Descriptor.class, getId());
		/*Descriptor descr = new Descriptor();
		String query = " FROM org.blueoxygen.cimande.descriptors.Descriptor WHERE id ='" + getId()+ "'";
		tmp = pm.find(query,null,null);
		for(Iterator it = tmp.iterator();it.hasNext();){
			descr = (Descriptor)it.next();
		}*/
		if (descr == null) {
			addActionError("Cannot find such descriptor");
			return ERROR;

		} else {

			if (getName().equalsIgnoreCase("")) {
				addActionError("Name can't be empty");
			}
			if (getDescription().equalsIgnoreCase("")) {
				addActionError("Description can't be empty");
			}

			descr.setName(getName());
			descr.setDescription(getDescription());
			descr.setUrlAction(getUrlAction());
			descr.setUrlDescriptor(getUrlDescriptor());
			descr.setDescriptorFlag(getDescriptorFlag());		
			
			descr.setTypeFlag(getTypeFlag());

			//		if (!getDescriptorGroupId().equalsIgnoreCase("")) {
			//		DescriptorGroup dg = (DescriptorGroup) pm.getById(
			//				DescriptorGroup.class, getDescriptorGroupId());
			//		if (dg != null) {
			//			descr.setDescriptorGroup(dg);
			//		} else {
			//			addActionError("Cannot find such descriptor group.");
			//		}}
			//
			//		if (!getWizardId().equalsIgnoreCase("")){
			//		Wizard wiz = (Wizard) pm.getById(Wizard.class, getWizardId());
			//		if (wiz != null) {
			//			descr.setWizard(wiz);
			//		} else {
			//			addActionError("Cannot find such wizard");
			//		}}
			//		
			//		if (!getCollectionDefaultId().equalsIgnoreCase("")){
			//		Collection coll = (Collection) pm.getById(Collection.class,
			//				getCollectionDefaultId());
			//		if (coll != null) {
			//			descr.setCollectionDefault(coll);
			//		} else {
			//			addActionError("Cannot find such collection");
			//		}}

			LogInformation log = descr.getLogInformation();
			/*
			 * fix this dude. this is not working well.
			*/
			
			if (sessCredentials.getCurrentUser()!=null) {
			log.setLastUpdateBy(sessCredentials.getCurrentUser().getId());
			log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
			}

			log.setActiveFlag(getActiveFlag());

			descr.setLogInformation(log);

			if (hasErrors()) {
				return INPUT;
			} else {
				pm.save(descr);
				return SUCCESS;
			}
		}

	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessCredentials = sessionCredentials;

	}

}