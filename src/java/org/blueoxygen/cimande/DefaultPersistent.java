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

import java.io.Serializable;

import javax.persistence.Embedded;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import org.hibernate.annotations.GenericGenerator;

/**
 * @author Umar Khatab
 *
 * To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
@MappedSuperclass
public abstract class DefaultPersistent implements Serializable {
	private String id;
	private LogInformation logInformation = new LogInformation();
	
	
	//private String siteId;
	
	/**
	 * @return Returns the id.
	 * @hibernate.id generator-class="uuid.hex" length="28" unsaved-value="0"
	 */
	@Id() @GeneratedValue(generator="system-uuid")
	@GenericGenerator(name="system-uuid", strategy = "uuid")
	public String getId() {
		return id;
	}
	/**
	 * @param id The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * @return Returns the logInformation.
	 * @hibernate.component
	 */
	@Embedded
	public LogInformation getLogInformation() {
		return logInformation;
	}
	/**
	 * @param logInformation The logInformation to set.
	 */
	public void setLogInformation(LogInformation logInformation) {
		this.logInformation = logInformation;
	}
}
