package org.blueoxygen.cimande.gx.db.table;

import java.util.ArrayList;

import org.blueoxygen.cimande.gx.entity.GxTable;

public class ListTable extends TableForm {
	private String formId = "";
	
	public String execute(){
		setTables((ArrayList<GxTable>)manager.getList("FROM " + GxTable.class.getName() 
				+ " gt WHERE gt.logInformation.activeFlag=1", null, null));
		return SUCCESS;
	}

	public String getFormId() {
		return formId;
	}

	public void setFormId(String formId) {
		this.formId = formId;
	}
}
