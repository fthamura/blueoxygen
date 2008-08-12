/*
 * Created on Jul 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.section.actions;



import org.blueoxygen.cimande.descriptors.Descriptor;


/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class EditSection extends ViewSection{
	protected Descriptor sectionDescriptor;
	private String descriptor_id="";
	
	public String execute(){
		String result = super.execute();
		
		return SUCCESS;
	}

	public Descriptor getSectionDescriptor() {
		return sectionDescriptor;
	}

	public void setSectionDescriptor(Descriptor sectionDescriptor) {
		this.sectionDescriptor = sectionDescriptor;
	}

	public String getDescriptor_id() {
		return descriptor_id;
	}

	public void setDescriptor_id(String descriptor_id) {
		this.descriptor_id = descriptor_id;
	}
	
	
	}
