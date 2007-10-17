package org.blueoxygen.cimande.gx.window;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class ListWindow extends ActionSupport implements PersistenceAware {
	private List windows = new ArrayList();
	protected GxWindow window;
	protected PersistenceManager pm;
	
	public String execute()
	{
		windows = pm.findAllSorted(GxWindow.class, "description");
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
		}

	

	
	
	/**
	 * @return Returns the window.
	 */
	public GxWindow getWindow() {
		return window;
	}
	/**
	 * @param window The window to set.
	 */
	public void setWindow(GxWindow window) {
		this.window = window;
	}
	/**
	 * @return Returns the windows.
	 */
	public List getWindows() {
		return windows;
	}
	/**
	 * @param windows The windows to set.
	 */
	public void setWindows(List windows) {
		this.windows = windows;
	}

}
