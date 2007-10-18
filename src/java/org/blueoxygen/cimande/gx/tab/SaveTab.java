package org.blueoxygen.cimande.gx.tab;

import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;

import org.apache.commons.beanutils.PropertyUtils;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GxTable;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class SaveTab extends TabForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;
	
	public String execute() {
		if (getTab().getName().equalsIgnoreCase("")){
			addActionError("Name can not be empty");
		}
		
		if (getTable().getId() == null || "".equalsIgnoreCase(getTable().getId())) {
			addActionError("Table can not be empty");
		} else {
			setTable((GxTable) manager.getById(GxTable.class, getTable().getId()));
		}
	
		if (hasActionErrors()){
			return INPUT;
		}
		
		LogInformation log;
		if(getTab().getId() == null){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else if(getTab().getId() != null && "".equalsIgnoreCase(getTab().getId())){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			getTab().setId(null);
		} else {
			GxTab temp = getTab();
			setTab((GxTab)manager.getById(GxTab.class, getTab().getId()));
			log = getTab().getLogInformation();
			try {
				PropertyUtils.copyProperties(getTab(), temp);
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

		getTab().setLogInformation(log);
		getTab().setTable(getTable());
		manager.save(getTab());
		setReport("Save Success");
		setId(temp.getId());
		return SUCCESS;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}


}
