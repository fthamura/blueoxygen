/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.site.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.site.Site;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;

/**
 * @author mee_andto@yahoo.com
 * 
 */
@Validation
public class UpdateSite extends SiteForm implements SessionCredentialsAware {

	private SessionCredentials sess;
	private String id;
	private Site site;

	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "name", message = "Name can't be empty."),
			@RequiredStringValidator(fieldName = "description", message = "Description can't be empty.") })
	public String execute() {
		// if (getName().equalsIgnoreCase(""))
		// addActionError("Name can't be empty.");
		// if (getDescription().equalsIgnoreCase(""))
		// addActionError("Description can't be empty.");

		if (hasErrors()) {
			return INPUT;
		} else {
			site = (Site) persistenceManager.getById(Site.class, getId());

			site.setName(getName());
			site.setDescription(getDescription());
			site.setTitle(getTitle());
			site.setAdmin_email(getAdmin_email());
			site.setNotify_email(getNotify_email());
			site.setNotify_flag(getNotify_flag());
			site.setNotify_from(getNotify_from());
			site.setNotify_message(getNotify_message());
			site.setUrl_branding(getUrl_branding());
			if(getWorkspace_type().equalsIgnoreCase("")){
				site.setWorkspace_type(get("workspace.type.default.role"));
			}else {
				site.setWorkspace_type(getWorkspace_type());
			}
			// site.setSite_headline(getSite_headline());
			site.setSite_url(getSite_url());
			logInfo = site.getLogInformation();
			logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
			logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
			site.setLogInformation(logInfo);
			persistenceManager.save(site);
			return SUCCESS;
		}
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
	}

	/**
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}

}
