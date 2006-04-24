/**
 * 
 */
package org.blueoxygen.cimande.descriptorgroup.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.descriptors.DescriptorGroup;
/**
 * @author Ikromy
 *
 */
public class UpdateDescriptorGroup extends DescriptorGroupForm implements SessionCredentialsAware {

	private SessionCredentials sessCredentials;
	
	public String execute() {
		System.out.println("UPDATE");
		DescriptorGroup desGroup = (DescriptorGroup) pm.getById(DescriptorGroup.class, getId());
		
		if (desGroup == null) {
			addActionError("Cannot find such descriptor group");
			return ERROR;

		} else {
			
			if (getGroupId().equalsIgnoreCase("")) {
				addActionError("Group Id can't be empty");
			}
			if (getFolder().equalsIgnoreCase("")) {
				addActionError("Folder can't be empty");
			}
			if (getDescription().equalsIgnoreCase("")) {
				addActionError("Description can't be empty");
			}
			desGroup.setGroupId(getGroupId());
			desGroup.setFolder(getFolder());
			desGroup.setDescription(getDescription());
			
			LogInformation logInfo = desGroup.getLogInformation();
			
			if (sessCredentials.getCurrentUser()!=null) {
				logInfo.setLastUpdateBy(sessCredentials.getCurrentUser().getId());
				logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
				}

			logInfo.setActiveFlag(getActiveFlag());

			desGroup.setLogInformation(logInfo);

			if (hasErrors()) {
				return INPUT;
			} else {
				pm.save(desGroup);
				return SUCCESS;
			}
		}
	}
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessCredentials = sessionCredentials;

	}
}
