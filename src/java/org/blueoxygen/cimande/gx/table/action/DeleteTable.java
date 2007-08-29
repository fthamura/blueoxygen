package org.blueoxygen.cimande.gx.table.action;

import java.util.Iterator;

import org.blueoxygen.cimande.gx.table.DBTable;


public class DeleteTable extends TableForm {

	private String confirm = "";
	
	public String execute() {
		if(!confirm.equalsIgnoreCase("")){
			if(confirm.equalsIgnoreCase("Yes")){
				if(!getId().equalsIgnoreCase("")){
					table = (DBTable) manager.getById(DBTable.class, getId());
					manager.remove(table);
					setReport("Delete table success.");
				}else {
					setReport("Delete table fail.");
				}
			} else if(confirm.equalsIgnoreCase("No")){
				setReport("Delete table canceled.");
			}
		}
		return SUCCESS;
	}

	/**
	 * @return Returns the confirm.
	 */
	public String getConfirm() {
		return confirm;
	}

	/**
	 * @param confirm The confirm to set.
	 */
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

}
