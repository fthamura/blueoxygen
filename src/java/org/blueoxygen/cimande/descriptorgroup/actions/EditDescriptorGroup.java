/**
 * 
 */
package org.blueoxygen.cimande.descriptorgroup.actions;
import org.blueoxygen.cimande.descriptors.DescriptorGroup;

/**
 * @author Ikromy
 *
 */
public class EditDescriptorGroup extends DescriptorGroupForm {

	public String execute() {
		DescriptorGroup desGroup = (DescriptorGroup) pm.getById(DescriptorGroup.class, getId());
			
		if (desGroup == null) {
		System.out.println("EDIT");
		addActionError("Cannot find such descriptor group");
		return ERROR;
		} else {

			setGroupId(desGroup.getGroupId());
			setFolder(desGroup.getFolder());
			setDescription(desGroup.getDescription());
			setActiveFlag(desGroup.getLogInformation().getActiveFlag());

		return SUCCESS;
		}
	}
}