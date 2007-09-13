package org.blueoxygen.cimande.gx.droplistname.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.DroplistName;
import org.blueoxygen.cimande.gx.entity.DroplistValue;

import com.opensymphony.xwork2.ActionContext;

public class DroplistLoadForm extends DroplistNameForm {
	
	public String execute(){
		droplistname = (DroplistName) ActionContext.getContext().getSession().get(DROPLISTNAME);
		Object ob = ActionContext.getContext().getSession().get(DROPLISTVALUES);
		List<DroplistValue> list = (List<DroplistValue>) ob;
		droplistvalues = list;
		return SUCCESS;
	}

}
