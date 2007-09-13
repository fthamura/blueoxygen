package org.blueoxygen.cimande.gx.table.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.DBTable;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class ListTable extends ActionSupport implements PersistenceAware {
	private List tables = new ArrayList();
	protected DBTable table;
	protected PersistenceManager pm;
	
	public String execute()
	{
		tables = pm.findAllSorted(DBTable.class, "description");
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
		}

	

	
	
	/**
	 * @return Returns the table.
	 */
	public DBTable getTable() {
		return table;
	}
	/**
	 * @param table The table to set.
	 */
	public void setTable(DBTable table) {
		this.table = table;
	}
	/**
	 * @return Returns the tables.
	 */
	public List getTables() {
		return tables;
	}
	/**
	 * @param tables The tables to set.
	 */
	public void setTables(List tables) {
		this.tables = tables;
	}

}
