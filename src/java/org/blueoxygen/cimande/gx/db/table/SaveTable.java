package org.blueoxygen.cimande.gx.db.table;

import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;

import org.apache.commons.beanutils.PropertyUtils;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GxTable;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

public class SaveTable extends TableForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;
	public String execute(){
		if(getTable().getName() == null || "".equalsIgnoreCase(getTable().getName())){
			addActionError("Table Name is required");
		}
		if(hasActionErrors()){
			setReport("Save Failed");
			return INPUT;
		}
		LogInformation log;
		if(getTable().getId() == null){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else if(getTable().getId() != null && "".equalsIgnoreCase(getTable().getId())){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			getTable().setId(null);
		} else {
			GxTable temp = getTable();
			setTable((GxTable)manager.getById(GxTable.class, getTable().getId()));
			log = getTable().getLogInformation();
			try {
				PropertyUtils.copyProperties(getTable(), temp);
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

		getTable().setLogInformation(log);
		manager.save(getTable());
		setReport("Save Success");
		return SUCCESS;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}
}
