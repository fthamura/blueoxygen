package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

import javax.persistence.Table;


import org.blueoxygen.cimande.DefaultPersistent;

@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gx_table")
public class DBTable extends DefaultPersistent {

	private String name;
	private String description;
	private String tableName;
	

	@Column(name="db_table_name")
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String action) {
		this.tableName = action;
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
