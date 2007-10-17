package org.blueoxygen.cimande.gx.db.column;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.db.GXDBAccessor;
import org.blueoxygen.cimande.gx.db.GXDBAccessorImpl;
import org.blueoxygen.cimande.gx.entity.GxColumn;
import org.blueoxygen.cimande.gx.entity.GxDroplistName;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxTable;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

public class ColumnForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	private GxColumn column = new GxColumn();
	private List<GxColumn> columns = new ArrayList<GxColumn>();
	private GxTable table = new GxTable();
	private GxTable referenceTable = new GxTable();
	private GxDroplistName referenceDroplist = new GxDroplistName();
	private String report = "";
	private List<GxDroplistValue> dataTypes = new ArrayList<GxDroplistValue>();
	private GxDroplistValue dataType = new GxDroplistValue();
	
	public String execute(){
		if(getColumn().getId() != null && !"".equalsIgnoreCase(getColumn().getId())){
			setColumn((GxColumn) manager.getById(GxColumn.class, getColumn().getId()));
//			getColumn().getTable();
//			getColumn().getReferenceTable();
		}
		if(getTable().getId() != null && !"".equalsIgnoreCase(getTable().getId())){
			setTable((GxTable) manager.getById(GxTable.class, getTable().getId()));
			getTable().getColumns();
		}
		dataTypes = (List<GxDroplistValue>)manager.getList("FROM " + GxDroplistValue.class.getName() + 
				" v WHERE v.name.id='ff808081153bcda301153bce42640001'", null, null);
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public GxColumn getColumn() {
		return column;
	}

	public void setColumn(GxColumn column) {
		this.column = column;
	}

	public List<GxColumn> getColumns() {
		return columns;
	}

	public void setColumns(List<GxColumn> columns) {
		this.columns = columns;
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

	public GxTable getReferenceTable() {
		return referenceTable;
	}

	public void setReferenceTable(GxTable referenceTable) {
		this.referenceTable = referenceTable;
	}

	public List<GxDroplistValue> getDataTypes() {
		return dataTypes;
	}

	public void setDataTypes(List<GxDroplistValue> dataTypes) {
		this.dataTypes = dataTypes;
	}

	public GxDroplistValue getDataType() {
		return dataType;
	}

	public void setDataType(GxDroplistValue dataType) {
		this.dataType = dataType;
	}

	public GxDroplistName getReferenceDroplist() {
		return referenceDroplist;
	}

	public void setReferenceDroplist(GxDroplistName referenceDroplist) {
		this.referenceDroplist = referenceDroplist;
	}

}
