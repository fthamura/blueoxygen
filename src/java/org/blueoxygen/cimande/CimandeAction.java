/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande;

import java.io.IOException;
import java.util.List;
import java.util.Properties;

import org.apache.struts2.ServletActionContext;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.util.PropertyLooker;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author leo
 *
 */
public class CimandeAction extends ActionSupport implements PersistenceAware, SessionCredentialsAware {
	protected PersistenceManager manager;
	protected SessionCredentials sessionCredentials;
	
	private static Properties properties = new Properties();
	static {
		try {
			properties.load(PropertyLooker.getResourceAsStream("cimande.properties"));
		} catch (IOException e){
			e.printStackTrace();
		} catch (NullPointerException npe) {
			System.out.println("file cimande.properties is not in classpath");
			npe.printStackTrace();
		}
	}

	public static String get(String propertyName){
		return properties.getProperty(propertyName);
	}
	
	@Override
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}
	@Override
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}
	
	public User getCurrentUser(){
		return sessionCredentials.getCurrentUser();
	}
	public Role getCurrentRole(){
		return getCurrentUser().getRole();
	}
}
