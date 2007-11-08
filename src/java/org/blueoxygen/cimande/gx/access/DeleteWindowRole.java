package org.blueoxygen.cimande.gx.access;

import org.blueoxygen.cimande.gx.entity.GxWindowRole;
import org.blueoxygen.cimande.gx.entity.GxWindowRoleAccess;


public class DeleteWindowRole extends WindowRoleForm {
	private String confirm = "no";
	public String execute(){
		if("yes".equalsIgnoreCase(getConfirm())){
			if(getWindowRole().getId() != null && !"".equalsIgnoreCase(getWindowRole().getId())){
				manager.getById(GxWindowRole.class, getWindowRole().getId());
			}
			for(GxWindowRoleAccess wra : getWindowRole().getAccess()){
				manager.remove(wra);
			}
			manager.remove(getWindowRole());
		}
		return SUCCESS;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

}
