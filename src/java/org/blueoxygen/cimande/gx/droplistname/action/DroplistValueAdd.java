package org.blueoxygen.cimande.gx.droplistname.action;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.droplistname.DroplistName;
import org.blueoxygen.cimande.gx.droplistvalue.DroplistValue;
import org.blueoxygen.cimande.gx.droplistvalue.action.DroplistValueForm;

import com.opensymphony.xwork2.ActionContext;

public class DroplistValueAdd extends DroplistNameForm {
	
	public String execute() {
		if(getDroplistvalue().getValue().equalsIgnoreCase("")){
			addActionError("Select the module");
		}
		if(getDroplistvalue().getDescription().equalsIgnoreCase("")){
			addActionError("Select the descriptor");
		}
		if(hasActionErrors()){
			return INPUT;
		}
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			vtemp = (DroplistValue)manager.getById(DroplistValue.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		
		//dn = (DroplistName) manager.getById(DroplistName.class, droplistNameId);
		DroplistName dn = (DroplistName) ActionContext.getContext().getSession().get(DROPLISTNAME);
		if(ActionContext.getContext().getSession().containsKey(DROPLISTVALUES)){
			droplistvalues = (ArrayList<DroplistValue>) ActionContext.getContext().getSession().get(DROPLISTVALUES);
		} else {
			droplistvalues = new ArrayList<DroplistValue>();
		}
		vtemp.setValue(droplistvalue.getValue());
		vtemp.setDescription(droplistvalue.getDescription());
		vtemp.setLogInformation(logInfo);
		vtemp.setDroplistname(dn);
		droplistvalues.add(vtemp);
		ActionContext.getContext().getSession().put(DROPLISTVALUES, droplistvalues);
		//manager.save(temp);
		setReport("Add droplist value success");
		return SUCCESS;
	}

}
