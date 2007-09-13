package org.blueoxygen.cimande.gx.table.action;

import java.sql.Timestamp;

import org.blueoxygen.cimande.gx.entity.DBTable;
import org.blueoxygen.cimande.LogInformation;


public class AddTable extends TableForm {
	
	public String execute() {
		if(getTable().getName().equalsIgnoreCase("")){
			addActionError("Name can not be empty");
		}
		if(getTable().getTableName().equalsIgnoreCase("")){
			addActionError("Name Space can not be empty");
		}
		if(hasActionErrors()){
			return INPUT;
		}
		
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			temp = (DBTable)manager.getById(DBTable.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		
		temp.setName(table.getName());
		temp.setDescription(table.getDescription());
		temp.setTableName(table.getTableName());
		temp.setLogInformation(logInfo);
		
		manager.save(temp);
		setReport("Add table success");
		setId(temp.getId());
		return SUCCESS;
	}

}
