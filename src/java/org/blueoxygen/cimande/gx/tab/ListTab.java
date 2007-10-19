package org.blueoxygen.cimande.gx.tab;

import java.util.ArrayList;

import org.blueoxygen.cimande.gx.entity.GxTab;

public class ListTab extends TabForm {
	public String execute(){
		getWindow().setTabs((ArrayList<GxTab>)manager.getList("FROM " + GxTab.class.getName() 
				+ " g WHERE g.logInformation.activeFlag=1", null, null));
		return SUCCESS;
	}
}
