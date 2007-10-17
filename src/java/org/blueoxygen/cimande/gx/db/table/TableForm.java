package org.blueoxygen.cimande.gx.db.table;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxTable;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class TableForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	private List<GxTable> tables = new ArrayList<GxTable>();
	private GxTable table = new GxTable();
	private String report = "";
	
	public String execute(){
		if(getTable().getId() != null && !"".equalsIgnoreCase(getTable().getId())){
			setTable((GxTable) manager.getById(GxTable.class, getTable().getId()));
			getTable().getColumns();
		}
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public List<GxTable> getTables() {
		return tables;
	}

	public void setTables(List<GxTable> tables) {
		this.tables = tables;
	}

	public GxTable getTable() {
		return table;
	}

	public void setTable(GxTable table) {
		this.table = table;
	}

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

}
