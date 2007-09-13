package org.blueoxygen.cimande.gx.gxgreenator.action;

import java.sql.Timestamp;
import java.util.ArrayList;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GxGreenator;
import org.blueoxygen.cimande.gx.entity.Gxform;

public class AddGxgreenator extends GxgreenatorForm {
	
	public String execute() {
		if(getGxformId().equalsIgnoreCase("")){
			addActionError("Please select a gxform first");
		}
		if(getGxgreenator().getName().equalsIgnoreCase("")){
			addActionError("Name can not be empty");
		}		
		if(getGxgreenator().getType().equalsIgnoreCase("")){
			addActionError("Type can not be empty");
		}
		if(getGxgreenator().getType().equalsIgnoreCase("text")){
			if(getGxgreenator().getSize().equalsIgnoreCase("")){
				addActionError("Size can not be empty");
			}
			if(getGxgreenator().getMaxlength().equalsIgnoreCase("")){
				addActionError("Maxlength can not be empty");
			}
		}
		if(getGxgreenator().getType().equalsIgnoreCase("textarea")){
			if(getGxgreenator().getRows().equalsIgnoreCase("")){
				addActionError("Rows can not be empty");
			}
			if(getGxgreenator().getCols().equalsIgnoreCase("")){
				addActionError("Cols can not be empty");
			}
		}
		if(getGxgreenator().getType().equalsIgnoreCase("date")){
			if(getGxgreenator().getDateid().equalsIgnoreCase("")){
				addActionError("Date id can not be empty");
			}
		}
		
		if(hasActionErrors()){
			return INPUT;
		}
		
		LogInformation logInfo = new LogInformation();
		if(getId().equalsIgnoreCase("")){
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else {
			gx = (GxGreenator)manager.getById(GxGreenator.class, getId());
			logInfo.setCreateDate(gx.getLogInformation().getCreateDate());
		}
		
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		gxform = (Gxform)manager.getById(Gxform.class, gxformId);
		gx.setThinGxform(gxform);
		gx.setName(gxgreenator.getName());
		gx.setValue(gxgreenator.getValue());
		gx.setSize(gxgreenator.getSize());
		gx.setType(gxgreenator.getType());
		gx.setMaxlength(gxgreenator.getMaxlength());
		gx.setGxgreenatorName(gxgreenator.getGxgreenatorName());
		gx.setCols(gxgreenator.getCols());
		gx.setRows(gxgreenator.getRows());
		gx.setDateid(gxgreenator.getDateid());
		gx.setLogInformation(logInfo);
		
		manager.save(gx);
		
		String query = "FROM "+ GxGreenator.class.getName() + " AS tc WHERE tc.thinGxform.id='"+ gxform.getId()+"'";
		gxgreenators = (ArrayList<GxGreenator>)manager.getList(query, null, null);
		setReport("Add GxGreenator success");
		return SUCCESS;
	}


}
