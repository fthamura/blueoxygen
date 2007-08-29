/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.skin.actions;

/**
 * @author amix {amix_adib@yahoo.com}
 *
 */

public class DeleteSkin extends EditSkin {
	
	public String execute () {
		String result = super.execute();
				
		if (result.equalsIgnoreCase(SUCCESS)) {
			if(skin.getTheme()==null) {
				pm.remove(skin);
				return SUCCESS;
			} else {
				skin.setTheme(null);
				return INPUT;
			}
		} else {
			addActionError("No Contact");
			return ERROR;
		}		
	}
	
}
