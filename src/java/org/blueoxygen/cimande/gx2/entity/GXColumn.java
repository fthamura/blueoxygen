package org.blueoxygen.cimande.gx2.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.ReferenceType;

@Entity
@Table(name="gx_db_column")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GXColumn extends DefaultPersistent {
	private GXTable table;
	private String name;
	private GXDroplistValue dataType;
	private String defaultValue;
	private String description;
//	private ReferenceType reference = ReferenceType.NOT_REFERENCE;
	private int reference;
	private GXTable referenceTable;
	private GXDroplistName referenceDroplist;
	
	public GXColumn() {
		super();
	}
	public GXColumn(String name, GXDroplistValue dataType, String defaultValue,
			String description, LogInformation log) {
		super();
		this.name = name;
		this.dataType = dataType;
		this.defaultValue = defaultValue;
		this.description = description;
//		this.reference = ReferenceType.NOT_REFERENCE;
		this.reference = 0;
		referenceTable = null;
		this.setLogInformation(log);
	}
	public GXColumn(String name, GXDroplistValue dataType, String defaultValue,
			String description, GXTable referenceTable, LogInformation log) {
		super();
		this.name = name;
		this.dataType = dataType;
		this.defaultValue = defaultValue;
		this.description = description;
//		this.reference = ReferenceType.TABLE;
		this.reference = 1;
		this.referenceTable = referenceTable;
		this.setLogInformation(log);
	}
	public GXColumn(String name, GXDroplistValue dataType, String defaultValue,
			String description, GXDroplistName referenceDroplist, LogInformation log) {
		super();
		this.name = name;
		this.dataType = dataType;
		this.defaultValue = defaultValue;
		this.description = description;
//		this.reference = ReferenceType.DROPLIST;
		this.reference = 2;
		this.referenceDroplist = referenceDroplist;
		this.setLogInformation(log);
	}
	@ManyToOne
	public GXTable getTable() {
		return table;
	}
	public void setTable(GXTable table) {
		this.table = table;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@ManyToOne
	@JoinColumn(name="data_type")
	public GXDroplistValue getDataType() {
		return dataType;
	}
	public void setDataType(GXDroplistValue dataType) {
		this.dataType = dataType;
	}
	@Column(name="default_value")
	public String getDefaultValue() {
		return defaultValue;
	}
	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@ManyToOne
	@JoinColumn(name="reference_table_id")
	public GXTable getReferenceTable() {
		return referenceTable;
	}
	public void setReferenceTable(GXTable referenceTable) {
		this.referenceTable = referenceTable;
	}
//	@Enumerated(EnumType.ORDINAL)
//	public ReferenceType getReference() {
//		return reference;
//	}
//	public void setReference(ReferenceType reference) {
//		this.reference = reference;
//	}
	public int getReference() {
		return reference;
	}
	public void setReference(int reference) {
		this.reference = reference;
	}
	@ManyToOne
	@JoinColumn(name="reference_droplist_id")
	public GXDroplistName getReferenceDroplist() {
		return referenceDroplist;
	}
	public void setReferenceDroplist(GXDroplistName referenceDroplist) {
		this.referenceDroplist = referenceDroplist;
	}
	
}
