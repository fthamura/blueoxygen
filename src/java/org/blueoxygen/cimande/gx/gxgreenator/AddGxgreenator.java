package org.blueoxygen.cimande.gx.gxgreenator;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GXColumn;
import org.blueoxygen.cimande.gx.entity.GXDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxGreenator;
import org.blueoxygen.cimande.gx.entity.Gxform;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class AddGxgreenator extends GxgreenatorForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;
	
	private List<String> fieldTypes = new ArrayList<String>();
	private List<String> names = new ArrayList<String>();
	private List<String> columnIds = new ArrayList<String>();
	private List<String> defaultValues = new ArrayList<String>();
	
	private List<GxGreenator> gxs = new ArrayList<GxGreenator>();
	
	public String execute() {
		int columnCount = 0;
		if(getGxform().getId() == null || "".equalsIgnoreCase(getGxform().getId())){
			addActionError("Please select a gxform first");
		} else {
			setGxform((Gxform) manager.getById(Gxform.class, getGxform().getId()));
			columnCount = getGxform().getTable().getColumns().size();
		}
		
		if(hasActionErrors()){
			return INPUT;
		}
		
		LogInformation log;
		GXColumn c;
		
		for(int i = 0; i < columnCount; i ++){
			setGx(new GxGreenator());
			if(names.get(i) != null && !"".equalsIgnoreCase(names.get(i))){
				c = (GXColumn) manager.getById(GXColumn.class, columnIds.get(i));
				if(!getGxform().getTable().equals(c.getTable())){
					addActionError("Column " + c.getName() + " is not property of table " + gxform.getTable().getName());
				}
				if(getGx().getId() == null){
					log = new LogInformation();
					log.setCreateBy(sessionCredentials.getCurrentUser().getId());
					log.setCreateDate(new Timestamp(System.currentTimeMillis()));
				} else if(getGx().getId() != null && "".equalsIgnoreCase(getGx().getId())){
					log = new LogInformation();
					log.setCreateBy(sessionCredentials.getCurrentUser().getId());
					log.setCreateDate(new Timestamp(System.currentTimeMillis()));
					getGx().setId(null);
				} else {
					gxgreenator = getGx();
					setGx((GxGreenator)manager.getById(GxGreenator.class, getGx().getId()));
					log = getGx().getLogInformation();
				}
				log.setActiveFlag(1);
				log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
				log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
				getGx().setLogInformation(log);
				
				getGx().setColumn(c);
				getGx().setName(names.get(i));
				getGx().setValue(defaultValues.get(i));
				getGx().setType((GXDroplistValue) manager.getById(GXDroplistValue.class, fieldTypes.get(i)));
				getGx().setThinGxform(getGxform());
				manager.save(gx);
			}
		}
		setReport("Add GxGreenator success");
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
