package org.blueoxygen.cimande.gx.gxgreenator;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GXDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxGreenator;
import org.blueoxygen.cimande.gx.entity.Gxform;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class GxgreenatorForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected List<GxGreenator> gxgreenators = new ArrayList<GxGreenator>();
	protected GxGreenator gxgreenator = new GxGreenator();
	protected GxGreenator gx = new GxGreenator();
	protected Gxform gxform = new Gxform();
	private String report = "";

	public String execute() {
		if(gx.getId() != null && !"".equalsIgnoreCase(gx.getId())){
			gx = (GxGreenator) manager.getById(GxGreenator.class, gx.getId());
			gxform = gx.getThinGxform();
		} else if(gxform.getId() != null && !"".equalsIgnoreCase(gxform.getId())){
			gxform = (Gxform) manager.getById(Gxform.class, getGxform().getId());
			gxgreenators = gxform.getGreenators();
		}
		return SUCCESS;
	}

	/**
	 * @return Returns the gx.
	 */
	public GxGreenator getGx() {
		return gx;
	}

	/**
	 * @param gx The gx to set.
	 */
	public void setGx(GxGreenator gx) {
		this.gx = gx;
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
	 * @return Returns the gxgreenator.
	 */
	public GxGreenator getGxgreenator() {
		return gxgreenator;
	}

	/**
	 * @param gxgreenator The gxgreenator to set.
	 */
	public void setGxgreenator(GxGreenator gxgreenator) {
		this.gxgreenator = gxgreenator;
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

//	public GXDroplistValue getFieldType() {
//		return fieldType;
//	}
//
//	public void setFieldType(GXDroplistValue fieldType) {
//		this.fieldType = fieldType;
//	}

}
