/*
 * Created on Jul 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.modulefunction.actions;



import org.blueoxygen.cimande.descriptors.Descriptor;



/**
 * @author Amelia
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class EditModuleFunction extends ViewModuleFunction {
	protected Descriptor moduleDescriptor;
	private String moduleDescriptorId="";
	
	public String execute(){

		String result = super.execute();

		return SUCCESS;
	}
	
	
	
	/**
	 * @return Returns the moduleDescriptorId.
	 */
	public String getModuleDescriptorId() {
		return moduleDescriptorId;
	}
	/**
	 * @param moduleDescriptorId The moduleDescriptorId to set.
	 */
	public void setModuleDescriptorId(String moduleDescriptorId) {
		this.moduleDescriptorId = moduleDescriptorId;
	}
	
	/**
	 * @return Returns the moduleDescriptor.
	 */
	public Descriptor getModuleDescriptor() {
		return moduleDescriptor;
	}
	/**
	 * @param moduleDescriptor The moduleDescriptor to set.
	 */
	public void setModuleDescriptor(Descriptor moduleDescriptor) {
		this.moduleDescriptor = moduleDescriptor;
	}


	
}
