package org.blueoxygen.cimande.gx.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;

@Entity
@Table(name="gx_droplist_name")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GXDroplistName extends DefaultPersistent {
	private String name;
	private GXDroplistName parent;
	private List<GXDroplistValue> values;
	private List<GXDroplistName> childs;
	private String description;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@ManyToOne
	public GXDroplistName getParent() {
		return parent;
	}
	public void setParent(GXDroplistName parent) {
		this.parent = parent;
	}
	@OneToMany(mappedBy="name")
	public List<GXDroplistValue> getValues() {
		return values;
	}
	public void setValues(List<GXDroplistValue> values) {
		this.values = values;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@OneToMany(mappedBy="parent")
	public List<GXDroplistName> getChilds() {
		return childs;
	}
	public void setChilds(List<GXDroplistName> childs) {
		this.childs = childs;
	}
}
