package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;

@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gx_window")
public class Window extends DefaultPersistent {

	private String name;
	private String description;
	private String entityType;
	private String windowType;
	private String image;
	private int height;
	private int width;

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
	
	
	

	
	
	
	
}
