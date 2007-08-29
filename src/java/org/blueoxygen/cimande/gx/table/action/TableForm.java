package org.blueoxygen.cimande.gx.table.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.column.DBColumn;
import org.blueoxygen.cimande.gx.table.DBTable;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class TableForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected List<DBColumn> columns = new ArrayList<DBColumn>();
	protected List<DBTable> tables = new ArrayList<DBTable>();
	protected DBTable table = new DBTable();
	protected DBTable temp = new DBTable();
	private String id = "";
	private String report = "";
	
	public String execute(){
		if (!getId().equalsIgnoreCase("")){
			table = (DBTable)manager.getById(DBTable.class, getId());
			String query = "FROM "+ DBColumn.class.getName() + " AS tc WHERE tc.table.id='"+table.getId()+"'";
			columns = (ArrayList<DBColumn>)manager.getList(query, null, null);
		}
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
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

	public List getColumns() {
		return columns;
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
	public DBTable getTemp() {
		return temp;
	}

	/**
	 * @param temp The temp to set.
	 */
	public void setTemp(DBTable temp) {
		this.temp = temp;
	}

	/**
	 * @return the tables
	 */
	public List<DBTable> getTables() {
		return tables;
	}

	/**
	 * @param tables the tables to set
	 */
	public void setTables(List<DBTable> tables) {
		this.tables = tables;
	}

	/**
	 * @param columns the columns to set
	 */
	public void setColumns(List<DBColumn> columns) {
		this.columns = columns;
	}

}
