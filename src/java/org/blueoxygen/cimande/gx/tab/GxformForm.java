package org.blueoxygen.cimande.gx.tab;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxTable;
import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author MeiyMeiy
 *
 */
public class GxformForm extends ActionSupport implements PersistenceAware{
	protected PersistenceManager manager;
	protected List<GxField> gxgreenators = new ArrayList<GxField>();
	protected List<GxTab> tabs = new ArrayList<GxTab>();
	protected GxTab tab = new GxTab();
	protected GxField gx2 = new GxField();
	protected GxTab temp = new GxTab();
	private GxTable table = new GxTable();
	private String id = "";
	private String report = "";
	private List<GxDroplistValue> fieldTypes = new ArrayList<GxDroplistValue>();
	private GxDroplistValue fieldType = new GxDroplistValue();
	
	public String execute(){
		if (!getId().equalsIgnoreCase("")){
			tab = (GxTab)manager.getById(GxTab.class, getId());
			String query = "FROM "+ GxField.class.getName() +" AS tc WHERE tc.thinGxform.id='"+ tab.getId() +"'";
			gxgreenators = (ArrayList<GxField>)manager.getList(query, null, null);
		}
		fieldTypes = (List<GxDroplistValue>)manager.getList("FROM " + GxDroplistValue.class.getName() + 
				" v WHERE v.name.id='ff80808115422db9011542327c580001'", null, null);
		return SUCCESS;
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

	/**
	 * @return Returns the tabs.
	 */
	public List<GxTab> getGxforms() {
		return tabs;
	}

	/**
	 * @param tabs The tabs to set.
	 */
	public void setGxforms(List<GxTab> tabs) {
		this.tabs = tabs;
	}

	/**
	 * @return Returns the fields.
	 */
	public List<GxField> getGxgreenators() {
		return gxgreenators;
	}

	/**
	 * @param fields The fields to set.
	 */
	public void setGxgreenators(List<GxField> gxgreenators) {
		this.gxgreenators = gxgreenators;
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

	/**
	 * @return Returns the temp.
	 */
	public GxTab getTemp() {
		return temp;
	}

	/**
	 * @param temp The temp to set.
	 */
	public void setTemp(GxTab temp) {
		this.temp = temp;
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

	public List<GxDroplistValue> getFieldTypes() {
		return fieldTypes;
	}

	public void setFieldTypes(List<GxDroplistValue> fieldTypes) {
		this.fieldTypes = fieldTypes;
	}

	public GxDroplistValue getFieldType() {
		return fieldType;
	}

	public void setFieldType(GxDroplistValue fieldType) {
		this.fieldType = fieldType;
	}

	/**
	 * @return the gx2
	 */
	public GxField getGx2() {
		return gx2;
	}

	/**
	 * @param gx2 the gx2 to set
	 */
	public void setGx2(GxField gx2) {
		this.gx2 = gx2;
	}


}
