package org.blueoxygen.cimande.gx.column.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.DBColumn;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class ListColumn extends ActionSupport implements PersistenceAware {
	private List columns = new ArrayList();
	protected DBColumn column;
	protected PersistenceManager pm;
	
	public String execute()
	{
		columns = pm.findAllSorted(DBColumn.class, "description");
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
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
	 * @return Returns the columns.
	 */
	public List getColumns() {
		return columns;
	}
	/**
	 * @param columns The columns to set.
	 */
	public void setColumns(List columns) {
		this.columns = columns;
	}

}
