package org.blueoxygen.cimande.gx.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.blueoxygen.cimande.DefaultPersistent;

@Entity
@Table(name="gx_db_row")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GXRow extends DefaultPersistent {
	private GXTable table;
	private List<GXRecord> records = new ArrayList<GXRecord>();
	
	@ManyToOne
	public GXTable getTable() {
		return table;
	}
	public void setTable(GXTable table) {
		this.table = table;
	}
	@OneToMany
	public List<GXRecord> getRecords() {
		return records;
	}
	public void setRecords(List<GXRecord> records) {
		this.records = records;
	}
	@Transient
	public String getByPrimary(){
		
		return "";
	}
}
