package org.blueoxygen.cimande.gx.db.column;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.db.GXDBAccessor;
import org.blueoxygen.cimande.gx.db.GXDBAccessorImpl;
import org.blueoxygen.cimande.gx.entity.GXColumn;
import org.blueoxygen.cimande.gx.entity.GXDroplistName;
import org.blueoxygen.cimande.gx.entity.GXDroplistValue;
import org.blueoxygen.cimande.gx.entity.GXTable;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class ColumnForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected GXDBAccessor accessor;
	private GXColumn column = new GXColumn();
	private List<GXColumn> columns = new ArrayList<GXColumn>();
	private GXTable table = new GXTable();
	private GXTable referenceTable = new GXTable();
	private GXDroplistName referenceDroplist = new GXDroplistName();
	private String report = "";
	private List<GXDroplistValue> dataTypes = new ArrayList<GXDroplistValue>();
	private GXDroplistValue dataType = new GXDroplistValue();
	
	public String execute(){
		accessor = new GXDBAccessorImpl(manager);
		if(getColumn().getId() != null && !"".equalsIgnoreCase(getColumn().getId())){
			setColumn((GXColumn) manager.getById(GXColumn.class, getColumn().getId()));
//			getColumn().getTable();
//			getColumn().getReferenceTable();
		}
		if(getTable().getId() != null && !"".equalsIgnoreCase(getTable().getId())){
			setTable((GXTable) manager.getById(GXTable.class, getTable().getId()));
			getTable().getColumns();
		}
		dataTypes = (List<GXDroplistValue>)manager.getList("FROM " + GXDroplistValue.class.getName() + 
				" v WHERE v.name.id='ff808081153bcda301153bce42640001'", null, null);
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public GXColumn getColumn() {
		return column;
	}

	public void setColumn(GXColumn column) {
		this.column = column;
	}

	public List<GXColumn> getColumns() {
		return columns;
	}

	public void setColumns(List<GXColumn> columns) {
		this.columns = columns;
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

	public GXTable getReferenceTable() {
		return referenceTable;
	}

	public void setReferenceTable(GXTable referenceTable) {
		this.referenceTable = referenceTable;
	}

	public List<GXDroplistValue> getDataTypes() {
		return dataTypes;
	}

	public void setDataTypes(List<GXDroplistValue> dataTypes) {
		this.dataTypes = dataTypes;
	}

	public GXDroplistValue getDataType() {
		return dataType;
	}

	public void setDataType(GXDroplistValue dataType) {
		this.dataType = dataType;
	}

	public GXDroplistName getReferenceDroplist() {
		return referenceDroplist;
	}

	public void setReferenceDroplist(GXDroplistName referenceDroplist) {
		this.referenceDroplist = referenceDroplist;
	}

}
