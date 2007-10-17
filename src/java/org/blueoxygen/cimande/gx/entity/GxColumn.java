package org.blueoxygen.cimande.gx.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistent;

/**
 * @author leo
 *
 */
@Entity
@Table(name="gx_db_column")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class GxColumn extends DefaultPersistent {
	private String name;
	private String description;
	private String dbColumn;
	private int length;
	private int mandatoryFlag;
	private int keyColumnFlag;
	private int parentLinkColumnFlag;
	private int encryptedFlag;
	private int referenceFlag;
	private GxTable table;
	private GxTable referenceTable;
	private GxDroplistName referenceDroplist;
	private GxDroplistValue element;
	
	@ManyToOne
	@JoinColumn(name="table_id")
	public GxTable getTable() {
		return table;
	}
	public void setTable(GxTable table) {
		this.table = table;
	}
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
	@ManyToOne
	@JoinColumn(name="reference_table_id")
	public GxTable getReferenceTable() {
		return referenceTable;
	}
	public void setReferenceTable(GxTable referenceTable) {
		this.referenceTable = referenceTable;
	}
	@Column(name="reference_flag")
	public int getReferenceFlag() {
		return referenceFlag;
	}
	public void setReferenceFlag(int reference) {
		this.referenceFlag = reference;
	}
	@ManyToOne
	@JoinColumn(name="reference_droplist_id")
	public GxDroplistName getReferenceDroplist() {
		return referenceDroplist;
	}
	public void setReferenceDroplist(GxDroplistName referenceDroplist) {
		this.referenceDroplist = referenceDroplist;
	}
	@Column(name="db_column")
	public String getDbColumn() {
		return dbColumn;
	}
	public void setDbColumn(String dbColumn) {
		this.dbColumn = dbColumn;
	}
	@Column(name="key_column_flag")
	public int getKeyColumnFlag() {
		return keyColumnFlag;
	}
	public void setKeyColumnFlag(int keyColumnFlag) {
		this.keyColumnFlag = keyColumnFlag;
	}
	@Column(name="mandatory_flag")
	public int getMandatoryFlag() {
		return mandatoryFlag;
	}
	public void setMandatoryFlag(int mandatoryFlag) {
		this.mandatoryFlag = mandatoryFlag;
	}
	@Column(name="parent_link_column_flag")
	public int getParentLinkColumnFlag() {
		return parentLinkColumnFlag;
	}
	public void setParentLinkColumnFlag(int parentLinkColumnFlag) {
		this.parentLinkColumnFlag = parentLinkColumnFlag;
	}
	@Column(name="encrypted_flag")
	public int getEncryptedFlag() {
		return encryptedFlag;
	}
	public void setEncryptedFlag(int encryptedFlag) {
		this.encryptedFlag = encryptedFlag;
	}
	@Column(name="length")
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	@ManyToOne
	@JoinColumn(name="element_id")
	public GxDroplistValue getElement() {
		return element;
	}
	public void setElement(GxDroplistValue element) {
		this.element = element;
	}
	
	
}
