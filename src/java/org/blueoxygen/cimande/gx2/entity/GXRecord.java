package org.blueoxygen.cimande.gx2.entity;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;

@Entity
@Table(name="gx_db_record")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GXRecord extends DefaultPersistent {
	private GXColumn column;
	private GXRow row;
	private String value;
	
	@ManyToOne
	public GXColumn getColumn() {
		return column;
	}
	public void setColumn(GXColumn column) {
		this.column = column;
	}
	@ManyToOne
	public GXRow getRow() {
		return row;
	}
	public void setRow(GXRow row) {
		this.row = row;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
}
