package org.blueoxygen.cimande.gx.field.action;

import java.util.Iterator;

import org.blueoxygen.cimande.gx.field.Field;


public class DeleteField extends FieldForm {

	public String execute() {
		if(!getId().equalsIgnoreCase("")){
			field = (Field) manager.getById(Field.class, getId());
			manager.remove(field);
			setReport("Delete field success.");
		}else {
			setReport("Delete field fail.");
		}
		return SUCCESS;
	}
	
}
