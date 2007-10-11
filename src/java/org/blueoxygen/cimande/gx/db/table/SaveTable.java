package org.blueoxygen.cimande.gx.db.table;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GXTable;
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
			log = ((GXTable)manager.getById(GXTable.class, getTable().getId())).getLogInformation();
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
