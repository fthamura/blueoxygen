package org.blueoxygen.cimande.gx.db.column;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.db.GXDBAccessorImpl;
import org.blueoxygen.cimande.gx.entity.GXColumn;
import org.blueoxygen.cimande.gx.entity.GXDroplistName;
import org.blueoxygen.cimande.gx.entity.GXDroplistValue;
import org.blueoxygen.cimande.gx.entity.GXTable;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class SaveColumn extends ColumnForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;

	public String execute(){
		accessor = new GXDBAccessorImpl(manager);
		// table
		if(getTable().getId() == null || "".equalsIgnoreCase(getTable().getId())){
			addActionError("Table is required");
		}else {
			setTable((GXTable)manager.getById(GXTable.class, getTable().getId()));
		}
		// name
		if(getColumn().getName() == null || "".equalsIgnoreCase(getColumn().getName())){
			addActionError("Column Name is required");
		}
		// datatype
		if(getDataType().getId() == null || "".equalsIgnoreCase(getDataType().getId())){
			addActionError("Data type is required");
		} else {
			setDataType((GXDroplistValue) manager.getById(GXDroplistValue.class, getDataType().getId()));
		}
		// reference
		if(getDataType().getId() != null && "ff808081153c724b01153c7430e70001".equalsIgnoreCase(getDataType().getId())){
			if(getColumn().getReference() == 1){ 
				if(getReferenceTable().getId() == null || "".equalsIgnoreCase(getReferenceTable().getId())){
					addActionError("Reference Table is required if reference type is table");
				} else {
					setReferenceTable((GXTable) manager.getById(GXTable.class, getReferenceTable().getId()));
					getColumn().setReferenceTable(getReferenceTable());
				}
			} else if(getColumn().getReference() == 2) {
				if(getReferenceDroplist().getId() == null || "".equalsIgnoreCase(getReferenceDroplist().getId())){
					addActionError("Reference Droplist is required if reference type is droplist");
				} else {
					setReferenceDroplist((GXDroplistName) manager.getById(GXDroplistName.class, getReferenceDroplist().getId()));
					getColumn().setReferenceDroplist(getReferenceDroplist());
				}
			} else {
				addActionError("Reference data type required reference type");
			}
		}
		// has error
		if(hasActionErrors()){
			setReport("Save Failed");
			return INPUT;
		}
		// LogInformation
		LogInformation log;
		if(getColumn().getId() == null){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else if(getColumn().getId() != null && "".equalsIgnoreCase(getColumn().getId())){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			getColumn().setId(null);
		} else {
			log = ((GXColumn)manager.getById(GXColumn.class, getColumn().getId())).getLogInformation();
		}
		log.setActiveFlag(1);
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		
		getColumn().setLogInformation(log);
		getColumn().setDataType(getDataType());
		accessor.addColumn(getTable(), getColumn());
		
		return SUCCESS;
	}
	
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

}
