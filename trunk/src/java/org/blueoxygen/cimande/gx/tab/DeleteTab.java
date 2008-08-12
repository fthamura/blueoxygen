package org.blueoxygen.cimande.gx.tab;

import org.blueoxygen.cimande.gx.entity.GxField;
import org.blueoxygen.cimande.gx.entity.GxTab;

public class DeleteTab extends TabForm {
	private String confirm = "No";
	
	public String execute() {
		if(confirm.equalsIgnoreCase("Yes")){
			if (getTab().getId() != null && !"".equalsIgnoreCase(getTab().getId())){
				setTab((GxTab)manager.getById(GxTab.class, getTab().getId()));
				for(GxField f: getTab().getFields()){
					manager.remove(f);
				}
				manager.remove(getTab());
				setReport("Delete form success");
			} else {
				setReport("Delete form failed");
			}
		} else if(confirm.equalsIgnoreCase("No")) {
			setReport("Delete form canceled");
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
