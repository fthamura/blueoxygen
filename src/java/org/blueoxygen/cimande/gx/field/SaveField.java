package org.blueoxygen.cimande.gx.field;

import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.PropertyUtils;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GxColumn;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class SaveField extends FieldForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;
	
	private List<String> fieldTypes = new ArrayList<String>();
	private List<String> names = new ArrayList<String>();
	private List<String> columnIds = new ArrayList<String>();
	private List<String> defaultValues = new ArrayList<String>();
	
	private List<GxField> gxs = new ArrayList<GxField>();
	
	public String execute() {
		int columnCount = 0;
		if(getTab().getId() == null || "".equalsIgnoreCase(getTab().getId())){
			addActionError("Please select a tab first");
		} else {
			setTab((GxTab) manager.getById(GxTab.class, getTab().getId()));
			columnCount = getTab().getTable().getColumns().size();
		}
		
		if(hasActionErrors()){
			return INPUT;
		}
		
		LogInformation log;
		if(getField().getId() == null){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else if(getField().getId() != null && "".equalsIgnoreCase(getField().getId())){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			getTab().setId(null);
		} else {
			GxTab temp = getTab();
			setField((GxField)manager.getById(GxField.class, getField().getId()));
			log = getField().getLogInformation();
			try {
				PropertyUtils.copyProperties(getField(), temp);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			} catch (NoSuchMethodException e) {
				e.printStackTrace();
			}
		}
		log.setActiveFlag(1);
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));

		getField().setLogInformation(log);
		getField().setTab(getTab());
		manager.save(getTab());
		setReport("Save Success");
		return SUCCESS;
	}

	public List<String> getFieldTypes() {
		return fieldTypes;
	}

	public void setFieldTypes(List<String> fieldTypes) {
		this.fieldTypes = fieldTypes;
	}

	public List<String> getNames() {
		return names;
	}

	public void setNames(List<String> names) {
		this.names = names;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

	public List<String> getColumnIds() {
		return columnIds;
	}

	public void setColumnIds(List<String> columnIds) {
		this.columnIds = columnIds;
	}

	public List<String> getDefaultValues() {
		return defaultValues;
	}

	public void setDefaultValues(List<String> defaultValues) {
		this.defaultValues = defaultValues;
	}


}
