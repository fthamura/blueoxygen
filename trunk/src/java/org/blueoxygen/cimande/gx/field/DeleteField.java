package org.blueoxygen.cimande.gx.field;

import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.gx.entity.GxWindow;

public class DeleteField extends FieldForm {
	
	public String execute(){
		if(getTab().getId() != null && !"".equalsIgnoreCase(getTab().getId())){
			setTab((GxTab) manager.getById(GxTab.class, getTab().getId()));
		}
		if(getWindow().getId() != null && !"".equalsIgnoreCase(getWindow().getId())){
			setWindow((GxWindow) manager.getById(GxWindow.class, getWindow().getId()));
		}
		
		if (!getTab().getId().equalsIgnoreCase("")){
			setField((GxField)manager.getById(GxField.class, getField().getId()));
			manager.remove(getField());
			setReport("Delete field success.");
		} else {
			setReport("Delete field failed.");
		}
		return SUCCESS;
	}


}
