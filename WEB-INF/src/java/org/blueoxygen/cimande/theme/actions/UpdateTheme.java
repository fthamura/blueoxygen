package org.blueoxygen.cimande.theme.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.theme.Theme;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

/**
 * @author kromy
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class UpdateTheme extends ThemeForm implements SessionCredentialsAware {

	private SessionCredentials sessionCredentials;

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;

	}
	public String execute() {

		Theme theme= (Theme) pm.getById(Theme.class, getId());
		if (theme == null) {
			addActionError("Such Theme couldn't be found. Edit process failed.");
			return ERROR;
		}

		else {
			if (getName().equalsIgnoreCase(""))
				addActionError("Nama Harus Diisi.");
			if (getTheme_folder().equalsIgnoreCase(""))
				addActionError("Theme Folder Harus Diisi");

			if (hasErrors()) {
				return INPUT;
			} else {

				theme.setName(getName());
				theme.setDescription(getDescription());
				theme.setTheme_folder(getTheme_folder());

				LogInformation log = theme.getLogInformation();
				log.setActiveFlag(getActiveFlag());
				
				if (sessionCredentials.getCurrentUser()!= null) {
				log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());}
				log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
				theme.setLogInformation(log);
				}
				pm.save(theme);
				return SUCCESS;
		}
	}
}

