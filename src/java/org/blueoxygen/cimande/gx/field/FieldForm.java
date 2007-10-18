package org.blueoxygen.cimande.gx.field;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class FieldForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected List<GxField> fields = new ArrayList<GxField>();
	protected GxField field = new GxField();
	protected GxTab tab = new GxTab();
	private String report = "";

	public String execute() {
		if(tab.getId() != null && !"".equalsIgnoreCase(tab.getId())){
			setTab((GxTab) manager.getById(GxTab.class, getTab().getId()));
			
		}
		return SUCCESS;
	}

	/**
	 * @return Returns the fields.
	 */
	public List<GxField> getFields() {
		return fields;
	}

	/**
	 * @param fields The fields to set.
	 */
	public void setFields(List<GxField> gxgreenators) {
		this.fields = gxgreenators;
	}

	/**
	 * @return Returns the manager.
	 */
	public PersistenceManager getManager() {
		return manager;
	}

	/**
	 * @param manager The manager to set.
	 */
	public void setManager(PersistenceManager manager) {
		this.manager = manager;
	}

	/**
	 * @return Returns the report.
	 */
	public String getReport() {
		return report;
	}

	/**
	 * @param report The report to set.
	 */
	public void setReport(String report) {
		this.report = report;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;		
	}

	public GxField getField() {
		return field;
	}

	public void setField(GxField field) {
		this.field = field;
	}

	public GxTab getTab() {
		return tab;
	}

	public void setTab(GxTab tab) {
		this.tab = tab;
	}

}
