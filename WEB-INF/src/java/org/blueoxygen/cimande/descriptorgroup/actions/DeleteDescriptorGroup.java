/**
 * 
 */
package org.blueoxygen.cimande.descriptorgroup.actions;

/**
 * @author Ikromy
 *
 */
public class DeleteDescriptorGroup extends ViewDescriptorGroup {

	public String execute() {

		String result = super.execute();

		if (result.equalsIgnoreCase(SUCCESS)) {

			pm.remove(desGroup);
			return SUCCESS;
		} else {
			addActionError("Cannot find such Descriptor");
			return ERROR;
		}
	}
}

