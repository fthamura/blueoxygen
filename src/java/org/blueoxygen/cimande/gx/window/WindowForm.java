package org.blueoxygen.cimande.gx.window;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.Window;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class WindowForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
//	protected List<Tab> tabs = new ArrayList<Tab>();
	protected List<Window> windows = new ArrayList<Window>();
	protected Window window = new Window();
	protected Window temp = new Window();
	private String id = "";
	private String report = "";
	
	public String execute(){
		if (!getId().equalsIgnoreCase("")){
			window = (Window)manager.getById(Window.class, getId());
//			String query = "FROM "+ Tab.class.getName() + " AS tc WHERE tc.window.id='"+window.getId()+"'";
//			tabs = (ArrayList<Tab>)manager.getList(query, null, null);
		}
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	
	/**
	 * @return Returns the window.
	 */
	public Window getWindow() {
		return window;
	}

	/**
	 * @param window The window to set.
	 */
	public void setWindow(Window window) {
		this.window = window;
	}

//	public List getTabs() {
//		return tabs;
//	}

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
	public Window getTemp() {
		return temp;
	}

	/**
	 * @param temp The temp to set.
	 */
	public void setTemp(Window temp) {
		this.temp = temp;
	}

	/**
	 * @return the windows
	 */
	public List<Window> getWindows() {
		return windows;
	}

	/**
	 * @param windows the windows to set
	 */
	public void setWindows(List<Window> windows) {
		this.windows = windows;
	}

//	/**
//	 * @param tabs the tabs to set
//	 */
//	public void setTabs(List<Tab> tabs) {
//		this.tabs = tabs;
//	}

}
