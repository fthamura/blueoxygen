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
import javax.persistence.Transient;

import org.blueoxygen.cimande.DefaultPersistence;

@Entity
@Table(name="gx_db_table")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GxTable extends DefaultPersistence {
	private String name;
	private String description;
	private String dbTable;
	private GxWindow window;
	private GxDroplistValue dataAccessLevel;
	private GxDroplistValue entity;
	private List<GxColumn> columns = new ArrayList<GxColumn>();
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@OneToMany(mappedBy="table")
	public List<GxColumn> getColumns() {
		return columns;
	}
	public void setColumns(List<GxColumn> columns) {
		this.columns = columns;
	}
	@Column(name="db_table")
	public String getDbTable() {
		return dbTable;
	}
	public void setDbTable(String dbTable) {
		this.dbTable = dbTable;
	}
	@ManyToOne
	public GxWindow getWindow() {
		return window;
	}
	public void setWindow(GxWindow window) {
		this.window = window;
	}
	@ManyToOne
	@JoinColumn(name="data_access_level_id")
	public GxDroplistValue getDataAccessLevel() {
		return dataAccessLevel;
	}
	public void setDataAccessLevel(GxDroplistValue dataAccessLevel) {
		this.dataAccessLevel = dataAccessLevel;
	}
	@ManyToOne
	@JoinColumn(name="entity_id")
	public GxDroplistValue getEntity() {
		return entity;
	}
	public void setEntity(GxDroplistValue entity) {
		this.entity = entity;
	}
	@Transient
	public int getColumnCount(){
		return getColumns().size();
	}
	
}
