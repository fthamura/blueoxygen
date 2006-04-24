/*
 * Created on Sep 27, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande;

import java.io.Serializable;

/**
 * @author alex
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public abstract class DefaultPersistent32 implements Serializable {
	private String id;
	private LogInformation logInformation = new LogInformation();
	
	
	//private String siteId;
	
	/**
	 * @return Returns the id.
	 * @hibernate.id generator-class="uuid.hex" length="32" unsaved-value="0"
	 */
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
