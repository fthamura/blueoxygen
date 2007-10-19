package org.blueoxygen.cimande.gx.field;

import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;

import org.apache.commons.beanutils.PropertyUtils;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class SaveField extends FieldForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;
	
	public String execute() {
		if(getTab().getId() == null || "".equalsIgnoreCase(getTab().getId())){
			addActionError("Please select a tab first");
		} else {
			setTab((GxTab) manager.getById(GxTab.class, getTab().getId()));
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
			getField().setId(null);
		} else {
			GxField temp = getField();
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

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}
}
