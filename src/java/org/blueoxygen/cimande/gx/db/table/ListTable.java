package org.blueoxygen.cimande.gx.db.table;

import org.blueoxygen.cimande.gx.db.GXDBAccessorImpl;
import org.blueoxygen.cimande.gx.entity.GxTable;

public class ListTable extends TableForm {
	private String formId = "";
	
	public String execute(){
//		accessor  = new GXDBAccessorImpl(manager);
		setTables(manager.getList("FROM " + GxTable.class.getName() 
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
