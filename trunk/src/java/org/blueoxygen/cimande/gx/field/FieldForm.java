package org.blueoxygen.cimande.gx.field;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class FieldForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	private List<GxField> fields = new ArrayList<GxField>();
	private GxField field = new GxField();
	private GxTab tab = new GxTab();
	private GxWindow window = new GxWindow();
	private String report = "";

	public String execute() {
		if(getField().getId() != null && !"".equalsIgnoreCase(getField().getId())){
			setField((GxField) manager.getById(GxField.class, getField().getId()));
		}
		if (getTab().getId() != null && !"".equalsIgnoreCase(getTab().getId())){
			setTab((GxTab)manager.getById(GxTab.class, getTab().getId()));
			getTab().getFields();
			getTab().getTable().getColumns();
		}
		if (getWindow().getId() != null && !"".equalsIgnoreCase(getWindow().getId())){
			setWindow((GxWindow)manager.getById(GxWindow.class, getWindow().getId()));
			getWindow().getTabs();
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

	public GxWindow getWindow() {
		return window;
	}

	public void setWindow(GxWindow window) {
		this.window = window;
	}

}
