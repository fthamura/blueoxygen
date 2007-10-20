/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.site;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;


 /**
  * @author Umar Khatab umar@intercitra.com
  * @hibernate.class table="site"
  */
@Entity()
@Table(name="site")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Site extends DefaultPersistent{

 	
 	private String name = "";
 	private String description = "";
 	private String title = "";
 	private String url_branding = "";
 	private String site_url = "";
 	private String admin_email = "";
 	private int notify_flag = 0;
 	private String notify_email = "";
 	private String notify_from = "";
 	private String notify_message = "";
 	private String site_headline = "";

 	/**
	 * @hibernate.property
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name The name to set.
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @hibernate.property
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description The description to set.
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @hibernate.property
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title The title to set.
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	
	/**
	 * @hibernate.property
	 */
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	
	/**
	 * @hibernate.property
	 */
	public String getNotify_email() {
		return notify_email;
	}
	public void setNotify_email(String notify_email) {
		this.notify_email = notify_email;
	}
	
	/**
	 * @hibernate.property
	 */
	public int getNotify_flag() {
		return notify_flag;
	}
	public void setNotify_flag(int notify_flag) {
		this.notify_flag = notify_flag;
	}
	
	/**
	 * @hibernate.property
	 */
	public String getNotify_from() {
		return notify_from;
	}
	public void setNotify_from(String notify_from) {
		this.notify_from = notify_from;
	}
	
	/**
	 * @hibernate.property
	 */
	public String getNotify_message() {
		return notify_message;
	}
	public void setNotify_message(String notify_message) {
		this.notify_message = notify_message;
	}
	
	/**
	 * @hibernate.property
	 */
	public String getSite_headline() {
		return site_headline;
	}
	public void setSite_headline(String site_headline) {
		this.site_headline = site_headline;
	}
	
	/**
	 * @hibernate.property
	 */
	public String getSite_url() {
		return site_url;
	}
	public void setSite_url(String site_url) {
		this.site_url = site_url;
	}
	
	
	/**
	 * @hibernate.property
	 */
	public String getUrl_branding() {
		return url_branding;
	}
	public void setUrl_branding(String url_branding) {
		this.url_branding = url_branding;
	}
	
	
 }
 	
 	