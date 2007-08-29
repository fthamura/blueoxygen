package org.blueoxygen.cimande.gx.droplistvalue;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.gx.droplistname.DroplistName;

/**
 * @author Fida & Anja
 *
 */

@Entity()
@Table(name="gx_droplist_value")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class DroplistValue extends DefaultPersistent{

	
	private String value;
	private String description;
	private DroplistName droplistname;

	
	@ManyToOne()
	@Column(name="droplistname_id")
	public DroplistName getDroplistname() {
		return droplistname;
	}
	public void setDroplistname(DroplistName droplistname) {
		this.droplistname = droplistname;
	}
	
	@Column
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	@Column
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}