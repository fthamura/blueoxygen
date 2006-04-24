package org.blueoxygen.cimande.theme.actions;

import org.blueoxygen.cimande.theme.Theme;
/**
 * @author kromy
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class EditTheme extends ThemeForm {
	public String execute() {

		Theme theme = (Theme) pm.getById(Theme.class, getId());

		if (theme == null) {
			addActionError("Such Theme couldn't be found");
			return ERROR;
		} else {

			setName(theme.getName());
			setDescription(theme.getDescription());
			setTheme_folder(theme.getTheme_folder());
			setActiveFlag(theme.getLogInformation().getActiveFlag());
			return SUCCESS;

		}

	}

}
