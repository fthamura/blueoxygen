package org.blueoxygen.cimande.gx.droplist;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxDroplistName;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class DetailValue extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	private GxDroplistName name = new GxDroplistName();
	private GxDroplistName parent = new GxDroplistName();
	private GxDroplistValue value = new GxDroplistValue();
	private List<GxDroplistName> names = new ArrayList<GxDroplistName>();
	private String report = "";
	
	public String execute(){
		if(getName().getId() != null && !"".equalsIgnoreCase(getName().getId())){
			setName((GxDroplistName) manager.getById(GxDroplistName.class, getName().getId()));
			getName().getChilds();
			getName().getValues();
		}
		if(getValue().getId() != null && !"".equalsIgnoreCase(getValue().getId())){
			setValue((GxDroplistValue) manager.getById(GxDroplistValue.class, getValue().getId()));
		}
		return SUCCESS;
	}

	public GxDroplistName getName() {
		return name;
	}

	public void setName(GxDroplistName name) {
		this.name = name;
	}

	public GxDroplistValue getValue() {
		return value;
	}

	public void setValue(GxDroplistValue value) {
		this.value = value;
	}

	public List<GxDroplistName> getNames() {
		return names;
	}

	public void setNames(List<GxDroplistName> names) {
		this.names = names;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

	public GxDroplistName getParent() {
		return parent;
	}

	public void setParent(GxDroplistName parent) {
		this.parent = parent;
	}
}
