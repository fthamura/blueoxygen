package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;

/**
 * @author leo
 *
 */
@Entity
@Table(name="gx_droplist_value")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GxDroplistValue extends DefaultPersistent {
	private GxDroplistName name;
	private String value;
	private String description;
	
	@ManyToOne
	@JoinColumn(name="droplist_name_id")
	public GxDroplistName getName() {
		return name;
	}
	public void setName(GxDroplistName name) {
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
