package org.blueoxygen.cimande.gx.field;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class GxgreenatorForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected List<GxField> fields = new ArrayList<GxField>();
	protected GxField field = new GxField();
	protected GxField gx = new GxField();
	protected GxTab tab = new GxTab();
	private String report = "";

	public String execute() {
		if(gx.getId() != null && !"".equalsIgnoreCase(gx.getId())){
			gx = (GxField) manager.getById(GxField.class, gx.getId());
			tab = gx.getTab();
		} else if(tab.getId() != null && !"".equalsIgnoreCase(tab.getId())){
			tab = (GxTab) manager.getById(GxTab.class, getGxform().getId());
			fields = tab.getFields();
		}
		return SUCCESS;
	}

	/**
	 * @return Returns the gx.
	 */
	public GxField getGx() {
		return gx;
	}

	/**
	 * @param gx The gx to set.
	 */
	public void setGx(GxField gx) {
		this.gx = gx;
	}

	/**
	 * @return Returns the tab.
	 */
	public GxTab getGxform() {
		return tab;
	}

	/**
	 * @param tab The tab to set.
	 */
	public void setGxform(GxTab tab) {
		this.tab = tab;
	}
//
//	/**
//	 * @return Returns the gxformId.
//	 */
//	public String getGxformId() {
//		return gxformId;
//	}
//
//	/**
//	 * @param gxformId The gxformId to set.
//	 */
//	public void setGxformId(String gxformId) {
//		this.gxformId = gxformId;
//	}

	/**
	 * @return Returns the field.
	 */
	public GxField getGxgreenator() {
		return field;
	}

	/**
	 * @param field The field to set.
	 */
	public void setGxgreenator(GxField gxgreenator) {
		this.field = gxgreenator;
	}

	/**
	 * @return Returns the fields.
	 */
	public List<GxField> getGxgreenators() {
		return fields;
	}

	/**
	 * @param fields The fields to set.
	 */
	public void setGxgreenators(List<GxField> gxgreenators) {
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

//	public GxDroplistValue getFieldType() {
//		return fieldType;
//	}
//
//	public void setFieldType(GxDroplistValue fieldType) {
//		this.fieldType = fieldType;
//	}

}
