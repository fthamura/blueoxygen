package org.blueoxygen.cimande.gx.references;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;

@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gx_ref_type")
public class References extends DefaultPersistent{
	private String name;
	private String description;
	private RefType reftype;
	
	@ManyToOne ()
	@Column(name="type_id")
	public RefType getReftype() {
		return reftype;
	}
	public void setReftype(RefType reftype) {
		this.reftype = reftype;
	}
	@Column
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Column
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
