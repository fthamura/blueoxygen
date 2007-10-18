package org.blueoxygen.cimande.gx.field;

import org.blueoxygen.cimande.gx.entity.GxField;

public class DeleteField extends FieldForm {
	
	public String execute(){
		if (!tab.getId().equalsIgnoreCase("")){
			field = (GxField)manager.getById(GxField.class, tab.getId());
			manager.remove(field);
			setReport("Delete field success.");
		} else {
			setReport("Delete field failed.");
		}
		return SUCCESS;
	}


}
