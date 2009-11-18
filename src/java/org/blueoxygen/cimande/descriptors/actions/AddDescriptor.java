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

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.descriptors.DescriptorModule;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

import sun.security.krb5.internal.crypto.Des;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;

/**
 * @author Umar Khatab umar@intercitra.com
 */
@Validation
public class AddDescriptor extends DescriptorForm implements SessionCredentialsAware {

	private SessionCredentials sessCredentials;
	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "name", message = "Please input name"),
			@RequiredStringValidator(fieldName = "description", message = "Please input description") })
			
	public String execute() {

		Descriptor descr = new Descriptor();
		DescriptorModule descriptorModule;
		LogInformation logInfo;
		if(getDescr().getId()==null || "".equalsIgnoreCase(getDescr().getId())){
			setDescrs(pm.getList("SELECT d FROM "+Descriptor.class.getName()+" d WHERE d.name= '"+getName()+"'", null, null));
			addActionError("Name already exist !!");
		}
			
			
/*		if (getName().equalsIgnoreCase("")) {
			addActionError("Name can't be empty");
		}
		if (getDescription().equalsIgnoreCase("")) {
			addActionError("Description can't be empty");
		}*/

		if (hasErrors()) {
			setDroplistValues(pm.getList("SELECT d FROM "+GxDroplistValue.class.getName()+" d WHERE d.name.id= '"+idDroplist+"'", null, null));
			return INPUT;
		} else {
			GxWindow window;
			if(!getWindowId().equalsIgnoreCase("")){
				window = (GxWindow) pm.getById(GxWindow.class, getWindowId());
				descr.setWindow(window);
			}
			descr.setName(getName());
			descr.setDescription(getDescription());
			descr.setUrlAction(getUrlAction());
			descr.setUrlDescriptor(getUrlDescriptor());
			
			descr.setDescriptorFlag(getDescriptorFlag());
			descr.setTypeFlag(getTypeFlag());

			LogInformation log = new LogInformation();

			/* must be fixed!!!
			 * 
			 */

			if (sessCredentials.getCurrentUser()!= null){
				log.setCreateBy(sessCredentials.getCurrentUser().getId());
				log.setLastUpdateBy(sessCredentials.getCurrentUser().getId());
			}

			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
			log.setActiveFlag(getActiveFlag());

			if (getActiveFlag() == -1) {
				log.setActiveFlag(LogInformation.INACTIVE);
			} else {
				log.setActiveFlag(getActiveFlag());
			}


			descr.setLogInformation(log);

			pm.save(descr);
			setDescr(descr);

			if(!getOptions().isEmpty()){
				for(String option : getOptions()){
					setDroplistValue((GxDroplistValue) pm.getById(GxDroplistValue.class, option));
					
					descriptorModule = new DescriptorModule();
					logInfo = new LogInformation();
					logInfo.setActiveFlag(1);
					logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
					logInfo.setCreateBy(sessCredentials.getCurrentUser().getId());
					
					descriptorModule.setLogInformation(logInfo);
					descriptorModule.setDescriptor(getDescr());
//					descriptorModule.setOptionmodule(option);
					descriptorModule.setDroplistValue(getDroplistValue());
					
					pm.save(descriptorModule);
					setDescriptorModule(descriptorModule);
					
					System.out.println(option+" ");
				}	
			}
			
			return SUCCESS;
		}

	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessCredentials = sessionCredentials;

	}

}