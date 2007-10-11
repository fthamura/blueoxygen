package org.blueoxygen.cimande.gx.droplist;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GXDroplistName;
import org.blueoxygen.cimande.gx.entity.GXDroplistValue;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class DroplistForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	private GXDroplistName name = new GXDroplistName();
	private GXDroplistName parent = new GXDroplistName();
	private GXDroplistValue value = new GXDroplistValue();
	private List<GXDroplistName> names = new ArrayList<GXDroplistName>();
	private String report = "";
	
	public String execute(){
		if(getName().getId() != null && !"".equalsIgnoreCase(getName().getId())){
			setName((GXDroplistName) manager.getById(GXDroplistName.class, getName().getId()));
			getName().getChilds();
			getName().getValues();
		}
		if(getValue().getId() != null && !"".equalsIgnoreCase(getValue().getId())){
			setValue((GXDroplistValue) manager.getById(GXDroplistValue.class, getValue().getId()));
		}
		return SUCCESS;
	}

	public GXDroplistName getName() {
		return name;
	}

	public void setName(GXDroplistName name) {
		this.name = name;
	}

	public GXDroplistValue getValue() {
		return value;
	}

	public void setValue(GXDroplistValue value) {
		this.value = value;
	}

	public List<GXDroplistName> getNames() {
		return names;
	}

	public void setNames(List<GXDroplistName> names) {
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

	public GXDroplistName getParent() {
		return parent;
	}

	public void setParent(GXDroplistName parent) {
		this.parent = parent;
	}
}
