package org.blueoxygen.cimande.gx.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;

@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gx_form_window")
public class GxWindow extends DefaultPersistence {

	private String name;
	private String description;
	private String image;
	private int height;
	private int width;
	private GxDroplistValue entityType;
	private GxDroplistValue windowType;
	private List<GxTab> tabs = new ArrayList<GxTab>();
	private List<GxWindowRole> accessRoles = new ArrayList<GxWindowRole>();
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	@ManyToOne
	@JoinColumn(name="entity_type_id")
	public GxDroplistValue getEntityType() {
		return entityType;
	}
	public void setEntityType(GxDroplistValue entityType) {
		this.entityType = entityType;
	}
	@ManyToOne
	@JoinColumn(name="window_type_id")
	public GxDroplistValue getWindowType() {
		return windowType;
	}
	public void setWindowType(GxDroplistValue windowType) {
		this.windowType = windowType;
	}
	@OneToMany(mappedBy="window")
	public List<GxTab> getTabs() {
		return tabs;
	}
	public void setTabs(List<GxTab> tabs) {
		this.tabs = tabs;
	}
	@OneToMany(mappedBy="window")
	public List<GxWindowRole> getAccessRoles() {
		return accessRoles;
	}
	public void setAccessRoles(List<GxWindowRole> accessRoles) {
		this.accessRoles = accessRoles;
	}
	
}
