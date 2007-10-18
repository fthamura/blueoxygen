package org.blueoxygen.cimande.gx.window;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxDroplistName;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class WindowForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
//	protected List<Tab> tabs = new ArrayList<Tab>();
	protected List<GxWindow> windows = new ArrayList<GxWindow>();
	protected GxWindow window = new GxWindow();
	protected GxWindow temp = new GxWindow();
	private String id = "";
	private String report = "";
	private GxDroplistName name=new GxDroplistName();
	
	public String execute(){
		if (!getId().equalsIgnoreCase("")){
			window = (GxWindow)manager.getById(GxWindow.class, getId());
//			String query = "FROM "+ Tab.class.getName() + " AS tc WHERE tc.window.id='"+window.getId()+"'";
//			tabs = (ArrayList<Tab>)manager.getList(query, null, null);
		}
		setName((GxDroplistName) manager.getById(GxDroplistName.class, "ff80808115ace81f0115acef78020002"));
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	
	/**
	 * @return Returns the window.
	 */
	public GxWindow getWindow() {
		return window;
	}

	/**
	 * @param  The window to set.
	 */
	public void setWindow(GxWindow window) {
		this.window = window;
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
	public GxWindow getTemp() {
		return temp;
	}

	/**
	 * @param temp The temp to set.
	 */
	public void setTemp(GxWindow temp) {
		this.temp = temp;
	}

	/**
	 * @return the windows
	 */
	public List<GxWindow> getWindows() {
		return windows;
	}

	/**
	 * @param windows the windows to set
	 */
	public void setWindows(List<GxWindow> windows) {
		this.windows = windows;
	}

	public GxDroplistName getName() {
		return name;
	}

	public void setName(GxDroplistName name) {
		this.name = name;
	}

//	/**
//	 * @param tabs the tabs to set
//	 */
//	public void setTabs(List<Tab> tabs) {
//		this.tabs = tabs;
//	}

}
