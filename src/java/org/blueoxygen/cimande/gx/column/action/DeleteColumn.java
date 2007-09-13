package org.blueoxygen.cimande.gx.column.action;

import java.util.Iterator;

import org.blueoxygen.cimande.gx.entity.DBColumn;


public class DeleteColumn extends ColumnForm {

	public String execute() {
		if(!getId().equalsIgnoreCase("")){
			column = (DBColumn) manager.getById(DBColumn.class, getId());
			manager.remove(column);
			setReport("Delete column success.");
		}else {
			setReport("Delete column fail.");
		}
		return SUCCESS;
	}
	
}
