package org.blueoxygen.cimande.gx2.gxgreenator.action;

import org.blueoxygen.cimande.gx2.entity.GxGreenator;

public class DeleteGxgreenator extends GxgreenatorForm {
	
	public String execute(){
		if (!gx.getId().equalsIgnoreCase("")){
			gxgreenator = (GxGreenator)manager.getById(GxGreenator.class, gx.getId());
			manager.remove(gxgreenator);
			setReport("Delete gxgreenator success.");
		} else {
			setReport("Delete gxgreenator failed.");
		}
		return SUCCESS;
	}


}
