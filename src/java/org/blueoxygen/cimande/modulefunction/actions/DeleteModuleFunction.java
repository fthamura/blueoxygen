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
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Generation - Code and Comments
 */
public class DeleteModuleFunction extends ViewModuleFunction {
	public String execute() {
		String result = super.execute();

		if (result.equalsIgnoreCase(SUCCESS)) {
			ModuleFunction mf = moduleFunction.getModuleFunction();
			if (mf != null) {
				mf.getModuleFunctions().remove(moduleFunction);
				moduleFunction.setModuleFunction(null);
				manager.save(mf);
			}
			manager.save(moduleFunction);
			moduleFunction = (ModuleFunction) manager.getById(
					ModuleFunction.class, moduleFunction.getId());
			for (ModuleFunction m : moduleFunction.getModuleFunctions()) {
				m.setModuleFunction(null);
				manager.save(m);
			}
			manager.remove(moduleFunction);
			return SUCCESS;

		} else {
			addActionError("No Module Function");
			return INPUT;
		}

	}
}
