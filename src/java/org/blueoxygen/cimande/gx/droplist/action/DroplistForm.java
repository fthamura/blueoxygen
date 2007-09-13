package org.blueoxygen.cimande.gx.droplist.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.gx.entity.Droplist;
import org.blueoxygen.cimande.gx.entity.DroplistName;
import org.blueoxygen.cimande.gx.entity.DroplistValue;

import com.opensymphony.xwork2.ActionSupport;

public class DroplistForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected List droplists = new ArrayList();
	protected List droplistnames = new ArrayList();
	protected List droplistvalues = new ArrayList();
	protected Droplist droplist = new Droplist();
	
	protected Droplist temp = new Droplist();
	private String id = "";
	private String report = "";
	private String droplistnameId = "";
	private String droplistvalueId = "";
	
	public String execute() {
		droplistnames = manager.findAll(DroplistName.class);
		droplistvalues = manager.findAll(DroplistValue.class);
		if (!getId().equalsIgnoreCase("")){
			droplist = (Droplist)manager.getById(Droplist.class, getId());
		}
		return SUCCESS;
	}
		
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	/**
	 * @return Returns the droplist.
	 */
	public Droplist getDroplist() {
		return droplist;
	}

	/**
	 * @param droplist The droplist to set.
	 */
	public void setDroplist(Droplist droplist) {
		this.droplist = droplist;
	}
	
	/**
	 * @return Returns the droplistnameId.
	 */
	public String getDroplistnameId() {
		return droplistnameId;
	}

	/**
	 * @param droplistnameId The droplistnameId to set.
	 */
	public void setDroplistnameId(String droplistnameId) {
		this.droplistnameId = droplistnameId;
	}

	/**
	 * @return Returns the droplistnames.
	 */
	public List getDroplistnames() {
		return droplistnames;
	}

	/**
	 * @param droplistnames The droplistnames to set.
	 */
	public void setDroplistnames(List droplistnames) {
		this.droplistnames = droplistnames;
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

	/**
	 * @return Returns the droplistvalueId.
	 */
	public String getDroplistvalueId() {
		return droplistvalueId;
	}

	/**
	 * @param droplistvalueId The droplistvalueId to set.
	 */
	public void setDroplistvalueId(String droplistvalueId) {
		this.droplistvalueId = droplistvalueId;
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
	public Droplist getTemp() {
		return temp;
	}




	/**
	 * @param temp The temp to set.
	 */
	public void setTemp(Droplist temp) {
		this.temp = temp;
	}
	

}
