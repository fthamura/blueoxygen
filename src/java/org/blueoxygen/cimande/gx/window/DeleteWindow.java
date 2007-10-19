package org.blueoxygen.cimande.gx.window;

import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.gx.entity.GxWindow;


public class DeleteWindow extends WindowForm {

	private String confirm = "No";
	
	public String execute() {
		if(confirm.equalsIgnoreCase("Yes")){
			if (getWindow().getId() != null && !"".equalsIgnoreCase(getWindow().getId())){
				setWindow((GxWindow) manager.getById(GxWindow.class, getWindow().getId()));
				for(GxTab t : getWindow().getTabs()){
					for(GxField f : t.getFields()){
						manager.remove(f);
					}
					manager.remove(t);
				}
				manager.remove(getWindow());
				setReport("Delete window success.");
			}else {
				setReport("Delete window fail.");
			}
		} else if(confirm.equalsIgnoreCase("No")){
			setReport("Delete window canceled.");
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
