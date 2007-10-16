package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.LogInformation;

@Entity
@Table(name="gx_db_column")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GXColumn extends DefaultPersistent {
	private GXTable table;
	private String name;
	private String description;
	private GXDroplistValue dataType;
	private String dbColumn;
	private String entityProperty;
	private String defaultValue;
	private String element;
	private int lenght;
	private int mandatoryFlag;
	private int keyColumnFlag;
	private int parentLinkColumnFlag;
	private int encryptedFlag;
	private int referenceFlag;
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
		this.referenceFlag = 0;
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
		this.referenceFlag = 1;
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
		this.referenceFlag = 2;
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
	public int getReferenceFlag() {
		return referenceFlag;
	}
	public void setReferenceFlag(int reference) {
		this.referenceFlag = reference;
	}
	@ManyToOne
	@JoinColumn(name="reference_droplist_id")
	public GXDroplistName getReferenceDroplist() {
		return referenceDroplist;
	}
	public void setReferenceDroplist(GXDroplistName referenceDroplist) {
		this.referenceDroplist = referenceDroplist;
	}
	public String getDbColumn() {
		return dbColumn;
	}
	public void setDbColumn(String dbColumn) {
		this.dbColumn = dbColumn;
	}
	public String getEntityProperty() {
		return entityProperty;
	}
	public void setEntityProperty(String entityProperty) {
		this.entityProperty = entityProperty;
	}
	public int getLenght() {
		return lenght;
	}
	public void setLenght(int lenght) {
		this.lenght = lenght;
	}
	public int getKeyColumnFlag() {
		return keyColumnFlag;
	}
	public void setKeyColumnFlag(int keyColumnFlag) {
		this.keyColumnFlag = keyColumnFlag;
	}
	public int getMandatoryFlag() {
		return mandatoryFlag;
	}
	public void setMandatoryFlag(int mandatoryFlag) {
		this.mandatoryFlag = mandatoryFlag;
	}
	public int getParentLinkColumnFlag() {
		return parentLinkColumnFlag;
	}
	public void setParentLinkColumnFlag(int parentLinkColumnFlag) {
		this.parentLinkColumnFlag = parentLinkColumnFlag;
	}
	public int getEncryptedFlag() {
		return encryptedFlag;
	}
	public void setEncryptedFlag(int encryptedFlag) {
		this.encryptedFlag = encryptedFlag;
	}
	
}
