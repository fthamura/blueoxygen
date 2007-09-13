package org.blueoxygen.cimande.gx.tab.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.Tab;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class ListTab extends ActionSupport implements PersistenceAware {
	private List tabs = new ArrayList();
	protected Tab tab;
	protected PersistenceManager pm;
	
	public String execute()
	{
		tabs = pm.findAllSorted(Tab.class, "description");
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
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
	 * @return Returns the tabs.
	 */
	public List getTabs() {
		return tabs;
	}
	/**
	 * @param tabs The tabs to set.
	 */
	public void setTabs(List tabs) {
		this.tabs = tabs;
	}

}
