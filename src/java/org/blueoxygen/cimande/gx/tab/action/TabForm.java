package org.blueoxygen.cimande.gx.tab.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.tab.Tab;
import org.blueoxygen.cimande.gx.window.Window;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class TabForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected List<Tab> tabs = new ArrayList();
	protected Tab tab = new Tab();
	protected Tab temp = new Tab();
	protected Window window = new Window();
	protected String windowId = "";
	private String id = "";
	private String report = "";
	
	public String execute(){
		if (!getId().equalsIgnoreCase("")){
			tab = (Tab)manager.getById(Tab.class, getId());
			window = tab.getWindow();
			String query = "FROM "+ Tab.class.getName() + " AS tc WHERE tc.window.id='"+window.getId()+"'";
			tabs = (ArrayList<Tab>)manager.getList(query, null, null);
		}
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	/**
	 * @return Returns the tab.
	 */
	public Tab getTab() {
		return tab;
	}

	/**
	 * @param tab The tab to set.
	 */
	public void setTab(Tab tab) {
		this.tab = tab;
	}

	/**
	 * @return Returns the descriptors.
	 */
	public List getTabs() {
		return tabs;
	}

	/**
	 * @param descriptors The descriptors to set.
	 */
	public void setTabs(List tabs) {
		this.tabs = tabs;
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
	public Tab getTemp() {
		return temp;
	}

	/**
	 * @param temp The temp to set.
	 */
	public void setTemp(Tab temp) {
		this.temp = temp;
	}

	/**
	 * @return the windowId
	 */
	public String getWindowId() {
		return windowId;
	}

	/**
	 * @param windowId the window
	 */
	public void setWindowId(String windowId) {
		this.windowId = windowId;
	}

	/**
	 * @return the window
	 */
	public Window getWindow() {
		return window;
	}

	/**
	 * @param window the window to set
	 */
	public void setWindow(Window window) {
		this.window = window;
	}

}
