package org.blueoxygen.cimande.descriptors.actions;

import org.blueoxygen.cimande.gx.entity.GxDroplistValue;

public class ListDescriptorModule extends DescriptorForm{
	public String execute(){
		setDroplistValues(pm.getList("SELECT d FROM "+GxDroplistValue.class.getName()+" d WHERE d.name.id= '"+idDroplist+"'", null, null));
		return SUCCESS;
	}
}
