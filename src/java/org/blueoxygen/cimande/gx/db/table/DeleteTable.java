package org.blueoxygen.cimande.gx.db.table;

import org.blueoxygen.cimande.gx.db.GXDBAccessorImpl;
import org.blueoxygen.cimande.gx.entity.GXTable;

public class DeleteTable extends TableForm {
	public String execute(){
		accessor = new GXDBAccessorImpl(manager);
		if(getTable().getId() != null && !"".equalsIgnoreCase(getTable().getId())){
			setTable((GXTable) manager.getById(GXTable.class, getTable().getId()));
			getTable().getLogInformation().setActiveFlag(0);
			manager.save(getTable());
		}
		return SUCCESS;
	}
}
