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

import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.descriptors.DescriptorModule;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.hibernate.Session;

/**
 * @author frans
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class EditDescriptorLoad extends DescriptorForm {
	protected Session sess;
	protected HibernateSessionFactory hsf;
	protected List tmp = new ArrayList();
	
	
	public String execute() {
		descr  = (Descriptor) pm.getById(Descriptor.class, getId());
		/*Descriptor descr = new Descriptor();
		String query = " FROM org.blueoxygen.cimande.descriptors.Descriptor WHERE id ='" + getId()+ "'";
		tmp = pm.find(query,null,null);
		for(Iterator it = tmp.iterator();it.hasNext();){
			descr = (Descriptor)it.next();
		}*/
		if (descr == null) {
			System.out.println("EDIT");
			addActionError("Cannot find such descriptor");
			return ERROR;
		} else {

			setName(descr.getName());
			setDescription(descr.getDescription());
			setUrlAction(descr.getUrlAction());
			setUrlDescriptor(descr.getUrlDescriptor());
			setTypeFlag(descr.getTypeFlag());
			setDescriptorFlag(descr.getDescriptorFlag());
			setActiveFlag(descr.getLogInformation().getActiveFlag());
			if(descr.getWindow() != null){
				setWindowId(descr.getWindow().getId());
			}
			
			setDescriptorModules(pm.getList("SELECT m FROM "+DescriptorModule.class.getName()+" m WHERE m.descriptor.id= '"+descr.getId()+"'", null, null));
			System.out.println("Size "+getDescriptorModules().size());
			return SUCCESS;
		}

	}
	
	

}