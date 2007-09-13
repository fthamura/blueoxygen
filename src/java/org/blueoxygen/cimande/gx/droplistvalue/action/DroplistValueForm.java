package org.blueoxygen.cimande.gx.droplistvalue.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.DroplistName;
import org.blueoxygen.cimande.gx.entity.DroplistValue;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;



public class DroplistValueForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected List droplists = new ArrayList();
	protected List<DroplistValue> droplistvalues = new ArrayList<DroplistValue>();
	protected DroplistValue droplistvalue = new DroplistValue();
	protected DroplistValue temp = new DroplistValue();
	protected DroplistName dn = new DroplistName();
	protected String droplistNameId = "";
	private String id = "";
	private String report = "";
	
	
	public String execute(){
		//droplists = manager.findAll(Droplist.class);
		droplistvalues = (ArrayList<DroplistValue>) manager.findAll(DroplistValue.class);
		if (!getId().equalsIgnoreCase("")){
			droplistvalue = (DroplistValue)manager.getById(DroplistValue.class, getId());
		}

		return SUCCESS;
	}
	/**
	 * @param manager The manager to set.
	 */
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}
	/**
	 * @return Returns the droplistvalue.
	 */
	public DroplistValue getDroplistvalue() {
		return droplistvalue;
	}
	/**
	 * @param droplistvalue The droplistvalue to set.
	 */
	public void setDroplistvalue(DroplistValue droplistvalue) {
		this.droplistvalue = droplistvalue;
	}
	/**
	 * @return Returns the droplistvalues.
	 */
	public List getDroplistvalues() {
		return droplistvalues;
	}
	/**
	 * @param droplistvalues The droplistvalues to set.
	 */
	public void setDroplistvalues(List droplistvalues) {
		this.droplistvalues = droplistvalues;
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
	 * @return Returns the droplists.
	 */
	public List getDroplists() {
		return droplists;
	}
	/**
	 * @param droplists The droplists to set.
	 */
	public void setDroplists(List droplists) {
		this.droplists = droplists;
	}
	public DroplistName getDn() {
		return dn;
	}
	public void setDn(DroplistName dn) {
		this.dn = dn;
	}
	public String getDroplistNameId() {
		return droplistNameId;
	}
	public void setDroplistNameId(String droplistNameId) {
		this.droplistNameId = droplistNameId;
	}
	
}
	