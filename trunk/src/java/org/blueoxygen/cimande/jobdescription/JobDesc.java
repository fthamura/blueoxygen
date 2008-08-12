package org.blueoxygen.cimande.jobdescription;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;

/**
 * 
 * @author dwimiyanto
 *
 * @hibernate.class table="job_position"
 */
@Entity()
@Table(name="job_position")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class JobDesc extends DefaultPersistence{

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
