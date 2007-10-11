package org.blueoxygen.cimande.gx.db.table;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.db.GXDBAccessor;
import org.blueoxygen.cimande.gx.db.GXDBAccessorImpl;
import org.blueoxygen.cimande.gx.entity.GXTable;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class TableForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected GXDBAccessor accessor;
	private List<GXTable> tables = new ArrayList<GXTable>();
	private GXTable table = new GXTable();
	private String report = "";
	
	public String execute(){
		accessor = new GXDBAccessorImpl(manager);
		if(getTable().getId() != null && !"".equalsIgnoreCase(getTable().getId())){
			setTable((GXTable) manager.getById(GXTable.class, getTable().getId()));
			getTable().getColumns();
		}
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public List<GXTable> getTables() {
		return tables;
	}

	public void setTables(List<GXTable> tables) {
		this.tables = tables;
	}

	public GXTable getTable() {
		return table;
	}

	public void setTable(GXTable table) {
		this.table = table;
	}

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

}
