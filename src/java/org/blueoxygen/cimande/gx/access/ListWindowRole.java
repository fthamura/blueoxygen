package org.blueoxygen.cimande.gx.access;

import java.util.ArrayList;

import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.gx.entity.GxWindowRole;
import org.blueoxygen.cimande.gx.entity.GxWindowRoleAccess;


public class ListWindowRole extends WindowRoleForm {
	public String execute(){
		if(getWindow().getId() != null || !"".equalsIgnoreCase(getWindow().getId())){
			setWindow((GxWindow) manager.getById(GxWindow.class, getWindow().getId()));
			getWindow().getAccessRoles();
//			for(GxWindowRole wr : getWindow().getAccessRoles()){
//				wr.getAccess();
//			}
		}
//		setWindowRoles((ArrayList<GxWindowRole>)manager.getList("FROM " + GxWindowRole.class.getName() + 
//				" wr WHERE wr.window.id='" + getWindow().getId() + "'", null, null));
		return SUCCESS;
	}
}
