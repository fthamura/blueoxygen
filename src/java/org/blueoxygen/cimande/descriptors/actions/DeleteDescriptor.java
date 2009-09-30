/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.descriptors.actions;

import org.blueoxygen.cimande.descriptors.DescriptorModule;

/**
 * @author frans
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class DeleteDescriptor extends ViewDescriptor {

	public String execute() {

		String result = super.execute();

		if (result.equalsIgnoreCase(SUCCESS)) {
			
			setDescriptorModules(pm.getList("SELECT m FROM "+DescriptorModule.class.getName()+" m WHERE m.descriptor.id= '"+descriptor.getId()+"'", null, null));
			for(DescriptorModule dm : getDescriptorModules()){
				pm.remove(dm);
				System.out.println("tes "+dm);
			}
			pm.remove(descriptor);
			return SUCCESS;
		} else {
			addActionError("Cannot find such Descriptor");
			return ERROR;
		}
	}
}