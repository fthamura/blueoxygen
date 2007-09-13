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
@Table(name="gx_tab")
public class Tab extends DefaultPersistent {

	private String name;
	private String description;
	private Window window;
	private DBTable table;
	
	@ManyToOne ()
	@Column(name="window_id")
	public Window getWindow() {
		return window;
	}
	public void setWindow(Window window) {
		this.window = window;
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
	@ManyToOne ()
	@Column(name="table_id")
	public DBTable getTable() {
		return table;
	}
	public void setTable(DBTable table) {
		this.table = table;
	}
}
