package org.blueoxygen.cimande.gx.droplist;

import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxDroplistName;

public class ListName extends DroplistForm {
	public String execute(){
		setNames((List<GxDroplistName>)manager.getList("FROM " + GxDroplistName.class.getName() 
				+ " n WHERE n.logInformation.activeFlag=1", null, null));
		return SUCCESS;
	}
}
