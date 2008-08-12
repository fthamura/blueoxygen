package org.blueoxygen.debus;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;

@Entity
@Table(name = "debus_permission_type")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class PermissionType extends DefaultPersistence {
	private String name;
	private String description;
	private int createFlag;
	private int readFlag;
	private int updateFlag;
	private int deleteFlag;

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

	@Column(name = "create_flag")
	public int getCreateFlag() {
		return createFlag;
	}

	public void setCreateFlag(int createFlag) {
		this.createFlag = createFlag;
	}

	@Column(name = "read_flag")
	public int getReadFlag() {
		return readFlag;
	}

	public void setReadFlag(int readFlag) {
		this.readFlag = readFlag;
	}

	@Column(name = "update_flag")
	public int getUpdateFlag() {
		return updateFlag;
	}

	public void setUpdateFlag(int updateFlag) {
		this.updateFlag = updateFlag;
	}

	@Column(name = "delete_flag")
	public int getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(int deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
}
