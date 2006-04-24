/**
 * 
 */
package org.blueoxygen.cimande.descriptorgroup.actions;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.descriptors.DescriptorGroup;
import com.opensymphony.xwork.ActionSupport;

/**
 * @author Ikromy
 *
 */
public class ViewDescriptorGroup extends ActionSupport implements PersistenceAware {

	protected PersistenceManager pm;
	protected DescriptorGroup desGroup;
	private String id;
	
	public String execute() {

		desGroup = (DescriptorGroup) pm.getById(DescriptorGroup.class, getId());
		if (desGroup == null) {
			addActionError("Cannot find such descriptor group");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;

	}
	public DescriptorGroup getDesGroup() {
		return desGroup;
	}

}
