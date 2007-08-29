package org.blueoxygen.cimande.gx.column.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.column.DBColumn;
import org.blueoxygen.cimande.gx.table.DBTable;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class ColumnForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected List<DBColumn> columns = new ArrayList();
	protected DBColumn column = new DBColumn();
	protected DBColumn temp = new DBColumn();
	protected DBTable table = new DBTable();
	protected String tableId = "";
	private String id = "";
	private String report = "";
	
	public String execute(){
		if (!getId().equalsIgnoreCase("")){
			column = (DBColumn)manager.getById(DBColumn.class, getId());
			table = column.getTable();
			String query = "FROM "+ DBColumn.class.getName() + " AS tc WHERE tc.table.id='"+table.getId()+"'";
			columns = (ArrayList<DBColumn>)manager.getList(query, null, null);
		}
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	/**
	 * @return Returns the column.
	 */
	public DBColumn getColumn() {
		return column;
	}

	/**
	 * @param column The column to set.
	 */
	public void setColumn(DBColumn column) {
		this.column = column;
	}

	/**
	 * @return Returns the descriptors.
	 */
	public List getColumns() {
		return columns;
	}

	/**
	 * @param descriptors The descriptors to set.
	 */
	public void setColumns(List columns) {
		this.columns = columns;
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
	public DBColumn getTemp() {
		return temp;
	}

	/**
	 * @param temp The temp to set.
	 */
	public void setTemp(DBColumn temp) {
		this.temp = temp;
	}

	/**
	 * @return the tableId
	 */
	public String getTableId() {
		return tableId;
	}

	/**
	 * @param tableId the tableId to set
	 */
	public void setTableId(String tableId) {
		this.tableId = tableId;
	}

	/**
	 * @return the table
	 */
	public DBTable getTable() {
		return table;
	}

	/**
	 * @param table the table to set
	 */
	public void setTable(DBTable table) {
		this.table = table;
	}

}
