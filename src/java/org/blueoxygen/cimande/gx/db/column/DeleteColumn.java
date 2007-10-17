package org.blueoxygen.cimande.gx.db.column;

import org.blueoxygen.cimande.gx.entity.GxColumn;

public class DeleteColumn extends ColumnForm {
	private String confirm = "no";
	public String execute(){
		if("yes".equalsIgnoreCase(getConfirm())){
			setColumn((GxColumn) manager.getById(GxColumn.class, getColumn().getId()));
			manager.remove(getColumn());
		}
		return SUCCESS;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
}
