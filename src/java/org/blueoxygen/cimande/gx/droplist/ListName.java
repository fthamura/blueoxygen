package org.blueoxygen.cimande.gx.droplist;

import java.util.List;

import org.blueoxygen.cimande.gx.entity.GXDroplistName;

public class ListName extends DroplistForm {
	public String execute(){
		setNames((List<GXDroplistName>)manager.getList("FROM " + GXDroplistName.class.getName() 
				+ " n WHERE n.logInformation.activeFlag=1", null, null));
		return SUCCESS;
	}
}
