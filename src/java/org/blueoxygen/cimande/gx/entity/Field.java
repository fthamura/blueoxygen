package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;

@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gx_field")
public class Field extends DefaultPersistent {

	private String name;
	private String description;
	private Tab tab;
	private DBColumn column;
	private References references;
	
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

	@ManyToOne ()
	@Column(name="tab_id")
	public Tab getTab() {
		return tab;
	}
	public void setTab(Tab tab) {
		this.tab = tab;
	}
	@ManyToOne ()
	@Column(name="column_id")
	public DBColumn getColumn() {
		return column;
	}
	public void setColumn(DBColumn column) {
		this.column = column;
	}
	@ManyToOne ()
	@Column(name="ref_id")
	public References getReferences() {
		return references;
	}
	public void setReferences(References references) {
		this.references = references;
	}
}
