package org.blueoxygen.debus;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.blueoxygen.cimande.DefaultPersistence;

@Entity
@Table(name = "debus_action_type")
public class ActionType extends DefaultPersistence {
	private String name;
	private String description;

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
}
