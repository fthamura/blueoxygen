package org.blueoxygen.cimande.descriptors.actions;

import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.descriptors.DescriptorModule;

public class DeleteDescriptorModule extends DescriptorForm{
	public String execute(){
		if(getDescriptorModule().getId()!=null && !"".equalsIgnoreCase(getDescriptorModule().getId())){
			setDescr((Descriptor) pm.getById(Descriptor.class, getId()));
			setDescriptorModule((DescriptorModule) pm.getById(DescriptorModule.class, getDescriptorModule().getId()));
			pm.remove(getDescriptorModule());
		}
		return SUCCESS;
	}
}
