package org.blueoxygen.cimande.gx.field.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.Field;
import org.blueoxygen.cimande.gx.entity.Tab;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class FieldForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected List<Field> fields = new ArrayList();
	protected Field field = new Field();
	protected Field temp = new Field();
	protected Tab tab = new Tab();
	protected String tabId = "";
	private String id = "";
	private String report = "";
	
	public String execute(){
		if (!getId().equalsIgnoreCase("")){
			field = (Field)manager.getById(Field.class, getId());
			tab = field.getTab();
			String query = "FROM "+ Field.class.getName() + " AS tc WHERE tc.tab.id='"+tab.getId()+"'";
			fields = (ArrayList<Field>)manager.getList(query, null, null);
		}
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	/**
	 * @return Returns the field.
	 */
	public Field getField() {
		return field;
	}

	/**
	 * @param field The field to set.
	 */
	public void setField(Field field) {
		this.field = field;
	}

	/**
	 * @return Returns the descriptors.
	 */
	public List getFields() {
		return fields;
	}

	/**
	 * @param descriptors The descriptors to set.
	 */
	public void setFields(List fields) {
		this.fields = fields;
	}

	/**
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id The id to set.
	 */
	public void setId(String id) {
		this.id = id;
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

	/**
	 * @return Returns the temp.
	 */
	public Field getTemp() {
		return temp;
	}

	/**
	 * @param temp The temp to set.
	 */
	public void setTemp(Field temp) {
		this.temp = temp;
	}

	/**
	 * @return the tabId
	 */
	public String getTabId() {
		return tabId;
	}

	/**
	 * @param tabId the tabId to set
	 */
	public void setTabId(String tabId) {
		this.tabId = tabId;
	}

	/**
	 * @return the tab
	 */
	public Tab getTab() {
		return tab;
	}

	/**
	 * @param tab the tab to set
	 */
	public void setTab(Tab tab) {
		this.tab = tab;
	}

}
