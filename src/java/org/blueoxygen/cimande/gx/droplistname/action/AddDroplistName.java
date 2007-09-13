package org.blueoxygen.cimande.gx.droplistname.action;


import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.DroplistName;

import com.opensymphony.xwork2.ActionContext;

/**
 * @author anja
 *
 */
public class AddDroplistName extends DroplistNameForm {
	
	public String execute() {
		if(getDroplistname().getName().equalsIgnoreCase("")){
			addActionError("Name can not be empty");
		}
		if(getDroplistname().getDescription().equalsIgnoreCase("")){
			addActionError("Name space can not be empty");
		}
		if(hasActionErrors()){
			return INPUT;
		}
		
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			temp = (DroplistName)manager.getById(DroplistName.class, getId());
			logInfo.setCreateDate(temp.getLogInformation().getCreateDate());
		}
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		
		temp.setName(droplistname.getName());
		temp.setDescription(droplistname.getDescription());
		temp.setLogInformation(logInfo);
		
		DroplistName tm = (DroplistName)manager.getById(DroplistName.class, getParentId());
		temp.setParent(tm);
		Map map = new HashMap();
		
		ActionContext.getContext().getSession().put(DROPLISTNAME, temp);
		//manager.save(temp);
		droplistname = temp;
		setReport("Add droplist success");
		return SUCCESS;
	}

}
