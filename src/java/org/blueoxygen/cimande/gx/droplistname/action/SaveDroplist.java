package org.blueoxygen.cimande.gx.droplistname.action;

import org.blueoxygen.cimande.gx.entity.DroplistValue;

import com.opensymphony.xwork2.ActionContext;

public class SaveDroplist extends DroplistLoadForm {
	public String execute(){
		super.execute();
		if(droplistvalues.isEmpty()){
			addActionError("Empty Value");
			return INPUT;
		}
		manager.save(droplistname);
		for(Object ot : droplistvalues){
			DroplistValue dv = (DroplistValue) ot;
			manager.save(dv);
		}
		ActionContext.getContext().getSession().remove("DroplistName");
		ActionContext.getContext().getSession().remove("DroplistValues");
		return SUCCESS;
	}

}
