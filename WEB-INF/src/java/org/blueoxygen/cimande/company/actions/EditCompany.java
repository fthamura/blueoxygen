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

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.company.Company;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

/**
 * @author Gurki
 */

public class EditCompany extends CompanyForm implements SessionCredentialsAware {

	private SessionCredentials sessCredentials;

	public String execute() {
		System.out.println("UPDATE");
		Company comp = (Company) pm.getById(Company.class, getId());

		if (comp == null) {
			addActionError("Cannot find such descriptor");
			return ERROR;

		} else {

			if (getName().equalsIgnoreCase("")) {
				addActionError("Name can't be empty");
			}
			

			comp.setName(getName());
			comp.setAddress(getAddress());
			comp.setState(getState());
			comp.setZip_number(getZip_number());
	
		    comp.setTelephone(getTelephone());
			comp.setFaximile(getFaximile());
			comp.setWebsite(getWebsite());
			comp.setEmail(getEmail());

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

			LogInformation log = comp.getLogInformation();
			/*
			 * fix this dude. this is not working well.
			*/
			
			if (sessCredentials.getCurrentUser()!=null) {
			log.setLastUpdateBy(sessCredentials.getCurrentUser().getId());
			log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
			}

			

			comp.setLogInformation(log);

			if (hasErrors()) {
				return INPUT;
			} else {
				pm.save(comp);
				return SUCCESS;
			}
		}

	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessCredentials = sessionCredentials;

	}

}