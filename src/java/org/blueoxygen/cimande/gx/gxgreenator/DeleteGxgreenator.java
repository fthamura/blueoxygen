package org.blueoxygen.cimande.gx.gxgreenator;

import org.blueoxygen.cimande.gx.entity.GxGreenator;

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
