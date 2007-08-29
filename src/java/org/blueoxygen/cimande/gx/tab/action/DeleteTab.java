package org.blueoxygen.cimande.gx.tab.action;

import java.util.Iterator;

import org.blueoxygen.cimande.gx.tab.Tab;


public class DeleteTab extends TabForm {

	public String execute() {
		if(!getId().equalsIgnoreCase("")){
			tab = (Tab) manager.getById(Tab.class, getId());
			manager.remove(tab);
			setReport("Delete tab success.");
		}else {
			setReport("Delete tab fail.");
		}
		return SUCCESS;
	}
	
}
