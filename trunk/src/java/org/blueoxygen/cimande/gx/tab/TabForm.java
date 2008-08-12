package org.blueoxygen.cimande.gx.tab;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxDroplistName;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxTable;
import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author MeiyMeiy
 *
 */
public class TabForm extends ActionSupport implements PersistenceAware{
	protected PersistenceManager manager;
	private GxWindow window = new GxWindow();
	private GxTab tab = new GxTab();
	private GxTable table = new GxTable();
	private String report = "";
	private GxDroplistName fieldTypes = new GxDroplistName();
	private GxDroplistValue fieldType = new GxDroplistValue();
	
	public String execute(){
		if (getTab().getId() != null && !"".equalsIgnoreCase(getTab().getId())){
			setTab((GxTab)manager.getById(GxTab.class, getTab().getId()));
			getTab().getFields();
			getTab().getTable().getColumns();
		}
		if (getWindow().getId() != null && !"".equalsIgnoreCase(getWindow().getId())){
			setWindow((GxWindow)manager.getById(GxWindow.class, getWindow().getId()));
			getWindow().getTabs();
		}
		setFieldTypes((GxDroplistName) manager.getById(GxDroplistName.class, "ff80808115422db9011542327c580001"));
		getFieldTypes().getValues();
		return SUCCESS;
	}

	/**
	 * @return Returns the tab.
	 */
	public GxTab getTab() {
		return tab;
	}

	/**
	 * @param tab The tab to set.
	 */
	public void setTab(GxTab tab) {
		this.tab = tab;
	}

	/**
	 * @return Returns the tabs.
	 */
	public List<GxTab> getTabs() {
		return getWindow().getTabs();
	}

	/**
	 * @return Returns the fields.
	 */
	public List<GxField> getFields() {
		return getTab().getFields();
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

	public GxTable getTable() {
		return table;
	}

	public void setTable(GxTable table) {
		this.table = table;
	}

	public GxDroplistValue getFieldType() {
		return fieldType;
	}

	public void setFieldType(GxDroplistValue fieldType) {
		this.fieldType = fieldType;
	}

	public GxDroplistName getFieldTypes() {
		return fieldTypes;
	}

	public void setFieldTypes(GxDroplistName fieldTypes) {
		this.fieldTypes = fieldTypes;
	}

	public GxWindow getWindow() {
		return window;
	}

	public void setWindow(GxWindow window) {
		this.window = window;
	}
}
