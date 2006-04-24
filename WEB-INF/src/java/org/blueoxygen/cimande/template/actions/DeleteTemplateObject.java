/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.template.actions;

/**
 * @author amix {amix_adib@yahoo.com}
 *
 */
public class DeleteTemplateObject extends EditTemplateObject {
	
	public String execute () {
		String result = super.execute();
				
		if (result.equalsIgnoreCase(SUCCESS)) {
			if(object.getTheme()==null) {
				pm.remove(object);
				return SUCCESS;
			} else {
				object.setTheme(null);
				return INPUT;
			}
		} else {
			addActionError("No Template Object");
			return ERROR;
		}		
	}
	
}
