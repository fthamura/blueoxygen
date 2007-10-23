package org.blueoxygen.cimande.gx.db.column;

import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;

import org.apache.commons.beanutils.PropertyUtils;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.db.GXDBAccessorImpl;
import org.blueoxygen.cimande.gx.entity.GxColumn;
import org.blueoxygen.cimande.gx.entity.GxDroplistName;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxTable;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class SaveColumn extends ColumnForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;

	public String execute(){
		
		// table
		if(getTable().getId() == null || "".equalsIgnoreCase(getTable().getId())){
			addActionError("Table is required");
		}else {
			setTable((GxTable)manager.getById(GxTable.class, getTable().getId()));
		}
		// name
		if(getColumn().getName() == null || "".equalsIgnoreCase(getColumn().getName())){
			addActionError("Column Name is required");
		}
		// datatype
		if(getDataType().getId() == null || "".equalsIgnoreCase(getDataType().getId())){
			addActionError("Data type is required");
		} else {
			setDataType((GxDroplistValue) manager.getById(GxDroplistValue.class, getDataType().getId()));
		}
		// reference
		if(getDataType().getId() != null ) {
			// ff808081153c724b01153c7430e70001 = reference @ drop list value
			
			if ("ff808081153c724b01153c7430e70001".equalsIgnoreCase(getDataType().getId())){
				if(getReferenceTable().getId() == null || "".equalsIgnoreCase(getReferenceTable().getId())){
					addActionError("Reference Table is required if data type is Table");
				} else {
					setReferenceTable((GxTable) manager.getById(GxTable.class, getReferenceTable().getId()));
					getColumn().setReferenceTable(getReferenceTable());
				}
			} else if("ff80808115cc81140115cc8a8dbe0001".equalsIgnoreCase(getDataType().getId())) {
				if(getReferenceDroplist().getId() == null || "".equalsIgnoreCase(getReferenceDroplist().getId())){
					addActionError("Reference Droplist is required if Data type is Droplist");
				} else {
					setReferenceDroplist((GxDroplistName) manager.getById(GxDroplistName.class, getReferenceDroplist().getId()));
					getColumn().setReferenceDroplist(getReferenceDroplist());
				}
			}
		} else {
			addActionError("Reference data type required reference type");
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
			GxColumn temp = getColumn();
			setColumn((GxColumn)manager.getById(GxColumn.class, getColumn().getId())); 
			log = getColumn().getLogInformation();
			copyValue(getColumn(), temp);
		}
		log.setActiveFlag(1);
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		
		getColumn().setLogInformation(log);
		getColumn().setElement(getDataType());
		getColumn().setTable(getTable());
		manager.save(getColumn());
		
		return SUCCESS;
	}
	
	private void copyValue(GxColumn a, GxColumn b){
		try {
			PropertyUtils.copyProperties(a, b);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
		
	}
	
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

}
