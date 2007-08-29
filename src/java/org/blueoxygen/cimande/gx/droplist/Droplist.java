package org.blueoxygen.cimande.gx.droplist;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.gx.droplistname.DroplistName;
import org.blueoxygen.cimande.gx.droplistvalue.DroplistValue;

@Entity()
@Table(name="gx_droplist")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Droplist extends DefaultPersistent{

	private DroplistName name;
	private DroplistName description;
	private DroplistValue value;
	
	@ManyToOne()
	@Column(name="droplist_value_id")
	public DroplistValue getValue() {
		return value;
	}
	public void setValue(DroplistValue value) {
		this.value = value;
	}	
	
	@ManyToOne()
	@Column(name="droplist_name_id")
	public DroplistName getName() {
		return name;
	}
	public void setName(DroplistName name) {
		this.name = name;
	}
	public DroplistName getDescription() {
		return description;
	}
	public void setDescription(DroplistName description) {
		this.description = description;
	}
	
}
