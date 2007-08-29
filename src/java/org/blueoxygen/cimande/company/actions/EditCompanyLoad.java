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

import org.blueoxygen.cimande.company.Company;

/**
 * @author Gurki
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class EditCompanyLoad extends CompanyForm {

	public String execute() {
		Company comp = (Company) pm.getById(Company.class, getId());

		if (comp == null) {
			addActionError("Cannot find such company");
			return ERROR;
		} else {

			setName(comp.getName());
			setAddress(comp.getAddress());
			setState(comp.getState());
			setZip_number(comp.getZip_number());
	
		    setTelephone(comp.getTelephone());
			setFaximile(comp.getFaximile());
			setWebsite(comp.getWebsite());
			setEmail(comp.getEmail());
			
			return SUCCESS;
		}

	}

}