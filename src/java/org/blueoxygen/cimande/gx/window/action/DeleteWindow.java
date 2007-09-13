package org.blueoxygen.cimande.gx.window.action;

import java.util.Iterator;

import org.blueoxygen.cimande.gx.entity.Window;


public class DeleteWindow extends WindowForm {

	private String confirm = "";
	
	public String execute() {
		if(!confirm.equalsIgnoreCase("")){
			if(confirm.equalsIgnoreCase("Yes")){
				if(!getId().equalsIgnoreCase("")){
					window = (Window) manager.getById(Window.class, getId());
					manager.remove(window);
					setReport("Delete window success.");
				}else {
					setReport("Delete window fail.");
				}
			} else if(confirm.equalsIgnoreCase("No")){
				setReport("Delete window canceled.");
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
