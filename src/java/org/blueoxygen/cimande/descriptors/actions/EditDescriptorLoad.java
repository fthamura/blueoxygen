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
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;

import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.persistence.PersistenceException;
import org.blueoxygen.cimande.persistence.hibernate3.HibernateSessionFactory;
import org.blueoxygen.cimande.persistence.hibernate3.HibernateSessionFactoryAware;
import org.blueoxygen.cimande.persistence.hibernate3.PersistenceManager;
import org.blueoxygen.cimande.persistence.hibernate3.PersistenceManagerAware;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

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
		Descriptor descr = (Descriptor) pm.getById(Descriptor.class, getId());
		/*Descriptor descr = new Descriptor();
		String query = " FROM org.blueoxygen.cimande.descriptors.Descriptor WHERE id ='" + getId()+ "'";
		tmp = pm.find(query,null,null);
		for(Iterator it = tmp.iterator();it.hasNext();){
			descr = (Descriptor)it.next();
		}*/
		if (descr == null) {
			System.out.println("EEDDDDDDDDDDIIIIITTTT");
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

			return SUCCESS;
		}

	}
	
	

}