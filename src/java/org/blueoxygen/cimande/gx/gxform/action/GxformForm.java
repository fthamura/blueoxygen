package org.blueoxygen.cimande.gx.gxform.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxGreenator;
import org.blueoxygen.cimande.gx.entity.Gxform;
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
	protected Gxform temp = new Gxform();
	
	private String id = "";
	private String report = "";
	
	public String execute(){
		if (!getId().equalsIgnoreCase("")){
			gxform = (Gxform)manager.getById(Gxform.class, getId());
			String query = "FROM "+ GxGreenator.class.getName() +" AS tc WHERE tc.thinGxform.id='"+ gxform.getId() +"'";
			gxgreenators = (ArrayList<GxGreenator>)manager.getList(query, null, null);
		}
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


}
