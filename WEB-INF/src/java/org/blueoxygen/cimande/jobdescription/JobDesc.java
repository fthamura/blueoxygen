package org.blueoxygen.cimande.jobdescription;

import org.blueoxygen.cimande.DefaultPersistent;

/**
 * 
 * @author dwimiyanto
 *
 * @hibernate.class table="job_position"
 */
public class JobDesc extends DefaultPersistent{

	private String name;
	private String description;
	
	/**
	 * 
	 * @return Description
	 * @hibernate.property
	 * 
	 */
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	/**
	 * 
	 * @return Name
	 * @hibernate.property
	 * 
	 */
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
