package org.blueoxygen.cimande.gx2.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.blueoxygen.cimande.DefaultPersistent;

@Entity
@Table(name="gx_db_table")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GXTable extends DefaultPersistent {
	private String name;
	private GXColumn primary;
	private String description;
	private List<GXRow> rows = new ArrayList<GXRow>();
	private List<GXColumn> columns = new ArrayList<GXColumn>();
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@ManyToOne
	@JoinColumn(name="primary_id")
	public GXColumn getPrimary() {
		return primary;
	}
	public void setPrimary(GXColumn primary) {
		this.primary = primary;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@OneToMany(mappedBy="table")
	public List<GXRow> getRows() {
		return rows;
	}
	public void setRows(List<GXRow> rows) {
		this.rows = rows;
	}
	@OneToMany(mappedBy="table")
	public List<GXColumn> getColumns() {
		return columns;
	}
	public void setColumns(List<GXColumn> columns) {
		this.columns = columns;
	}
	@Transient
	public int getColumnCount(){
		return getColumns().size();
	}
	
}
