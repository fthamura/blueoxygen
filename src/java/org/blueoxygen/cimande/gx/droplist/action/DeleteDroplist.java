package org.blueoxygen.cimande.gx.droplist.action;

import org.blueoxygen.cimande.gx.droplist.Droplist;

public class DeleteDroplist extends DroplistForm {
	
	private String confirm = "";	
	public String execute() {
		if(!confirm.equalsIgnoreCase("")){
			if(confirm.equalsIgnoreCase("Yes")){
				if(!getId().equalsIgnoreCase("")){
					droplist = (Droplist) manager.getById(Droplist.class, getId());
					manager.remove(droplist);
					setReport("Delete success.");
				}else {
					setReport("Delete fail.");
				}
			} else if(confirm.equalsIgnoreCase("No")){
				setReport("Delete canceled.");
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
