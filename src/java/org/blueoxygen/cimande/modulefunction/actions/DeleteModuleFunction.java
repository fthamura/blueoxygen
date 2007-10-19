/*
 * Created on Jul 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.modulefunction.actions;

import org.blueoxygen.cimande.modulefunction.ModuleFunction;

/**
 * @author Amelia
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class DeleteModuleFunction extends ViewModuleFunction{
	public String execute () {
		String result = super.execute();
		
		if (result.equalsIgnoreCase(SUCCESS)) {		
			moduleFunction.setModuleFunction(null);
			pm.save(moduleFunction);
			for(ModuleFunction m : moduleFunction.getModuleFunctions()){
				m.setModuleFunction(null);
				pm.save(m);
			}
			pm.remove(moduleFunction);
			return SUCCESS;
			
		} else {
			addActionError("No Module Function");
			return INPUT;
		}
		
	}
}
