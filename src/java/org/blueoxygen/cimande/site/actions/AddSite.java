/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.site.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.site.Site;
import org.blueoxygen.cimande.theme.Theme;

/**
 * @author frans
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class AddSite extends SiteForm implements SessionCredentialsAware {

	private SessionCredentials sessionCredentials;


	public String execute() {

		if (getName().equalsIgnoreCase("")) {
			addActionError("Name can't be empty.");
		}
		if (getDescription().equalsIgnoreCase("")) {
			addActionError("Description can't be empty.");
		}
		
		if (getTheme_id().equalsIgnoreCase("")) {
			addActionError("Theme ID can't be empty.");
		}
		if (hasErrors()) {return INPUT;} else {

		theme = (Theme) persistenceManager.getById(Theme.class, getTheme_id());
			
		Site newSite = new Site();

		newSite.setName(getName());
		newSite.setTitle(getTitle());
		newSite.setDescription(getDescription());
		newSite.setUrl_branding(getUrl_branding());
		newSite.setSite_url(getSite_url());
		newSite.setAdmin_email(getAdmin_email());
		newSite.setNotify_flag(getNotify_flag());
		newSite.setNotify_email(getNotify_email());
		newSite.setNotify_from(getNotify_from());
		newSite.setNotify_message(getNotify_message());
		newSite.setSite_headline(getSite_headline());
		newSite.setTheme(theme);

		LogInformation log = new LogInformation();

		if (sessionCredentials.getCurrentUser()!=null) {
		log.setCreateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		}
		
		log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));

		if (getActiveFlag() == -1) {
			//set activeFlag to inactive when not specified
			log.setActiveFlag(LogInformation.INACTIVE);
		} else {
			log.setActiveFlag(getActiveFlag());
		}

		newSite.setLogInformation(log);
		persistenceManager.save(newSite);

		return SUCCESS;}

	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;

	}

}