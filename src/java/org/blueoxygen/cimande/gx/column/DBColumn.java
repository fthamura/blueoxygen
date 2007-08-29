package org.blueoxygen.cimande.gx.column;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;


import javax.persistence.Table;


import org.blueoxygen.cimande.gx.table.DBTable;
import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;

@Entity()
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@Table(name="gx_column")
public class DBColumn extends DefaultPersistent {

	private String name;
	private String description;
	private DBTable table;
	private String columnName;
	
	@ManyToOne ()
	@Column(name="table_id")
	public DBTable getTable() {
		return table;
	}
	public void setTable(DBTable table) {
		this.table = table;
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
	@Column(name="db_column_name")
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String column_name) {
		this.columnName = column_name;
	}
}
