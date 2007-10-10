package org.blueoxygen.cimande.gx2.gxform.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx2.entity.GXDroplistValue;
import org.blueoxygen.cimande.gx2.entity.GXTable;
import org.blueoxygen.cimande.gx2.entity.GxGreenator;
import org.blueoxygen.cimande.gx2.entity.Gxform;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author MeiyMeiy
 *
 */
public class GxformForm extends ActionSupport implements PersistenceAware{
	protected PersistenceManager manager;
	protected List<GxGreenator> gxgreenators = new ArrayList<GxGreenator>();
	protected List<Gxform> gxforms = new ArrayList<Gxform>();
	protected Gxform gxform = new Gxform();
	protected GxGreenator gx2 = new GxGreenator();
	protected Gxform temp = new Gxform();
	private GXTable table = new GXTable();
	private String id = "";
	private String report = "";
	private List<GXDroplistValue> fieldTypes = new ArrayList<GXDroplistValue>();
	private GXDroplistValue fieldType = new GXDroplistValue();
	
	public String execute(){
		if (!getId().equalsIgnoreCase("")){
			gxform = (Gxform)manager.getById(Gxform.class, getId());
			String query = "FROM "+ GxGreenator.class.getName() +" AS tc WHERE tc.thinGxform.id='"+ gxform.getId() +"'";
			gxgreenators = (ArrayList<GxGreenator>)manager.getList(query, null, null);
		}
		fieldTypes = (List<GXDroplistValue>)manager.getList("FROM " + GXDroplistValue.class.getName() + 
				" v WHERE v.name.id='ff80808115422db9011542327c580001'", null, null);
		return SUCCESS;
	}

	/**
	 * @return Returns the gxform.
	 */
	public Gxform getGxform() {
		return gxform;
	}

	/**
	 * @param gxform The gxform to set.
	 */
	public void setGxform(Gxform gxform) {
		this.gxform = gxform;
	}

	/**
	 * @return Returns the gxforms.
	 */
	public List<Gxform> getGxforms() {
		return gxforms;
	}

	/**
	 * @param gxforms The gxforms to set.
	 */
	public void setGxforms(List<Gxform> gxforms) {
		this.gxforms = gxforms;
	}

	/**
	 * @return Returns the gxgreenators.
	 */
	public List<GxGreenator> getGxgreenators() {
		return gxgreenators;
	}

	/**
	 * @param gxgreenators The gxgreenators to set.
	 */
	public void setGxgreenators(List<GxGreenator> gxgreenators) {
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
	public Gxform getTemp() {
		return temp;
	}

	/**
	 * @param temp The temp to set.
	 */
	public void setTemp(Gxform temp) {
		this.temp = temp;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
		
	}

	public GXTable getTable() {
		return table;
	}

	public void setTable(GXTable table) {
		this.table = table;
	}

	public List<GXDroplistValue> getFieldTypes() {
		return fieldTypes;
	}

	public void setFieldTypes(List<GXDroplistValue> fieldTypes) {
		this.fieldTypes = fieldTypes;
	}

	public GXDroplistValue getFieldType() {
		return fieldType;
	}

	public void setFieldType(GXDroplistValue fieldType) {
		this.fieldType = fieldType;
	}

	/**
	 * @return the gx2
	 */
	public GxGreenator getGx2() {
		return gx2;
	}

	/**
	 * @param gx2 the gx2 to set
	 */
	public void setGx2(GxGreenator gx2) {
		this.gx2 = gx2;
	}


}
