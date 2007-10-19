package org.blueoxygen.cimande.gx.field;

import org.blueoxygen.cimande.gx.entity.GxField;

public class DeleteField extends FieldForm {
	
	public String execute(){
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
