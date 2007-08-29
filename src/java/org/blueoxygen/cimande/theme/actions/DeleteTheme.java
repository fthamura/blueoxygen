package org.blueoxygen.cimande.theme.actions;

import org.blueoxygen.cimande.theme.actions.ViewTheme;

public class DeleteTheme extends ViewTheme {
	
	public String execute() {
		if (super.execute().equalsIgnoreCase(SUCCESS)) {
		pm.remove(theme);
		return SUCCESS;
		
		} else {
			
		addActionError("Such Theme couldn't be found. Removal failed");
		return ERROR;
		}
	
	}

}
