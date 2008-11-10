package org.blueoxygen.cimande.gx.window;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.gx.entity.GxDroplistName;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.User;

import com.opensymphony.xwork2.ActionSupport;

public class WindowForm extends CimandeAction implements PersistenceAware {
	protected PersistenceManager manager;
	private List<GxWindow> windows = new ArrayList<GxWindow>();
	private GxWindow window = new GxWindow();
	private String report = "";
	private GxDroplistName windowTypes = new GxDroplistName();
	private GxDroplistValue windowType = new GxDroplistValue();
	private User user = new User();
	private String workType="";
	
	public String execute(){
		user = (User) manager.getById(User.class, getCurrentUser().getId());
		if(user.getWorkspace_type().equalsIgnoreCase("flat")){
			workType = "flat";
		}else{
			workType = "";
		}
		if (getWindow().getId() != null && !"".equalsIgnoreCase(getWindow().getId())){
			setWindow((GxWindow)manager.getById(GxWindow.class, getWindow().getId()));
			getWindow().getTabs();
			getWindow().getAccessRoles();
		}
		setWindowTypes((GxDroplistName) manager.getById(GxDroplistName.class, "ff80808115ace81f0115acef78020002"));
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

	public GxDroplistName getWindowTypes() {
		return windowTypes;
	}

	public void setWindowTypes(GxDroplistName name) {
		this.windowTypes = name;
	}

	public GxDroplistValue getWindowType() {
		return windowType;
	}

	public void setWindowType(GxDroplistValue windowType) {
		this.windowType = windowType;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getWorkType() {
		return workType;
	}

	public void setWorkType(String workType) {
		this.workType = workType;
	}
	

//	/**
//	 * @param tabs the tabs to set
//	 */
//	public void setTabs(List<Tab> tabs) {
//		this.tabs = tabs;
//	}

}
