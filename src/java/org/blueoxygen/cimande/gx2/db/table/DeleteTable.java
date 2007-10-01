package org.blueoxygen.cimande.gx2.db.table;

import org.blueoxygen.cimande.gx2.db.GXDBAccessorImpl;
import org.blueoxygen.cimande.gx2.entity.GXTable;

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
