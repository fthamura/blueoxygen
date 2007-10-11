package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;

@Entity
@Table(name="gx_droplist_value")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GXDroplistValue extends DefaultPersistent {
	private GXDroplistName name;
	private String value;
	private String description;
	
	@ManyToOne
	public GXDroplistName getName() {
		return name;
	}
	public void setName(GXDroplistName name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
