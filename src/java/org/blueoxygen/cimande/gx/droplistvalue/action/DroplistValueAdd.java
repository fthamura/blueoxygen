package org.blueoxygen.cimande.gx.droplistvalue.action;

import java.sql.Timestamp;

import org.blueoxygen.cimande.gx.droplistvalue.DroplistValue;
import org.blueoxygen.cimande.gx.droplistvalue.action.DroplistValueForm;
import org.blueoxygen.cimande.LogInformation;

public class DroplistValueAdd extends DroplistValueForm {
	
	public String execute() {
		if(getDroplist().getValue().equalsIgnoreCase("")){
			addActionError("Select the module");
		}
		if(getDroplist().getDescription().equalsIgnoreCase("")){
			addActionError("Select the descriptor");
		}
		if(hasActionErrors()){
			return INPUT;
		}
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			temp = (DroplistValue)manager.getById(DroplistValue.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		
		/*tm = (Module) manager.getById(Module.class, getModuleId());
		td = (gxDescriptor) manager.getById(gxDescriptor.class, getDescriptorId());*/
		temp.setValue(droplist.getValue());
		temp.setDescription(droplist.getDescription());
		temp.setLogInformation(logInfo);
				
		manager.save(temp);
		setReport("Add droplist value success");
		return SUCCESS;
	}

}
