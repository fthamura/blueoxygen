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
import java.io.InputStream;
import java.net.URL;
import java.util.List;
import java.util.Properties;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.RolePrivilage;
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
			properties.load(getResourceAsStream("cimande.properties"));
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
	
	public static URL getResource(String resourceName) {
		URL url = null;
		url = Thread.currentThread().getContextClassLoader().getResource(
				resourceName);
		if (url == null) {
			url = PropertyLooker.class.getClassLoader().getResource(resourceName);
		}
		return url;
	}
	
	public static InputStream getResourceAsStream(String resourceName) {
		URL url = getResource(resourceName);
		try {
			return (url != null) ? url.openStream() : null;
		} catch (IOException e) {
			return null;
		}
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
	
	public List getPrivilages(){
		String query = "SELECT m FROM " + RolePrivilage.class.getName() + " m WHERE ";
		return manager.getList(query, null, null);
	}
}
