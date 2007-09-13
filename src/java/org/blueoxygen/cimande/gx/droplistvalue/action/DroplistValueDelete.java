package org.blueoxygen.cimande.gx.droplistvalue.action;

import java.util.List;

import org.blueoxygen.cimande.gx.droplistvalue.action.DroplistValueForm;
import org.blueoxygen.cimande.gx.entity.DroplistValue;

public class DroplistValueDelete extends DroplistValueForm {

	private String confirm = "";
	public String execute() {
		if(!confirm.equalsIgnoreCase("")){
			if(confirm.equalsIgnoreCase("Yes")){
				if(!getId().equalsIgnoreCase("")){
					droplistvalue = (DroplistValue) manager.getById(DroplistValue.class, getId());
					manager.remove(droplistvalue);
					setReport("Delete droplist value success.");
				}else {
					setReport("Delete droplist value fail.");
				}
			} else if(confirm.equalsIgnoreCase("No")){
				setReport("Delete droplist value canceled.");
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
