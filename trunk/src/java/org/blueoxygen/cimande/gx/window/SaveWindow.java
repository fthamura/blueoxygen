package org.blueoxygen.cimande.gx.window;

import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;

import org.apache.commons.beanutils.PropertyUtils;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;


public class SaveWindow extends WindowForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;
	
	public String execute() {
		if(getWindow().getName() == null || "".equalsIgnoreCase(getWindow().getName())){
			addActionError("Name can not be empty");
		}
		if(hasActionErrors()){
			return INPUT;
		}
		if(getWindowType().getId() != null && !"".equalsIgnoreCase(getWindowType().getId())){
			setWindowType((GxDroplistValue) manager.getById(GxDroplistValue.class, getWindowType().getId()));
		} else {
			setWindowType(null);
		}
		
		LogInformation log;
		if(getWindow().getId() == null){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else if(getWindow().getId() != null && "".equalsIgnoreCase(getWindow().getId())){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			getWindow().setId(null);
		} else {
			GxWindow temp = getWindow();
			setWindow((GxWindow)manager.getById(GxWindow.class, getWindow().getId()));
			log = getWindow().getLogInformation();
			try {
				PropertyUtils.copyProperties(getWindow(), temp);
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

		getWindow().setLogInformation(log);
		getWindow().setWindowType(getWindowType());
		manager.save(getWindow());
		setReport("Save Success");
		return SUCCESS;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

}
