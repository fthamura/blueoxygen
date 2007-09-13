package org.blueoxygen.cimande.gx.column.action;

import java.sql.Timestamp;
import java.util.ArrayList;



import org.blueoxygen.cimande.gx.entity.DBColumn;
import org.blueoxygen.cimande.gx.entity.DBTable;
import org.blueoxygen.cimande.LogInformation;

public class AddColumn extends ColumnForm {
	
	
	public String execute() {
		if(getColumn().getName().equalsIgnoreCase("")){
			addActionError("Name can not be empty");
		}
		if(getTableId().equalsIgnoreCase("")){
			addActionError("Please select a table first");
		}
		if(hasActionErrors()){
			return INPUT;
		}
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			temp = (DBColumn)manager.getById(DBColumn.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		table = (DBTable)manager.getById(DBTable.class, tableId);
		temp.setTable(table);
		temp.setName(column.getName());
		temp.setDescription(column.getDescription());
		temp.setColumnName(column.getColumnName());
		temp.setLogInformation(logInfo);
		
		manager.save(temp);
		
		String query = "FROM "+ DBColumn.class.getName() + " AS tc WHERE tc.table.id='"+table.getId()+"'";
		columns = (ArrayList<DBColumn>)manager.getList(query, null, null);
		setReport("Add column success");
		return SUCCESS;
	}
}
