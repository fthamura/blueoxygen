package org.blueoxygen.cimande.gx.gxgreenator.action;

import org.blueoxygen.cimande.gx.entity.GxGreenator;

public class DeleteGxgreenator extends GxgreenatorForm {
	
	public String execute(){
		if (!getId().equalsIgnoreCase("")){
			gxgreenator = (GxGreenator)manager.getById(GxGreenator.class, getId());
			manager.remove(gxgreenator);
			setReport("Delete gxgreenator success.");
		} else {
			setReport("Delete gxgreenator failed.");
		}
		return SUCCESS;
	}


}
