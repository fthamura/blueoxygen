/*
 * Created on Jul 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.modulefunction.actions;

/**
 * @author Amelia
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class DeleteModuleFunction extends ViewModuleFunction{
	public String execute ()
	{
		String result = super.execute();
		
		
		if (result.equalsIgnoreCase(SUCCESS))
		{		
			if(moduleFunction.getModuleFunction()==null)
			{
				pm.remove(moduleFunction);
				return SUCCESS;
			}
				
			else
			{
				moduleFunction.setModuleFunction(null);
				return INPUT;
			}
		}
		else
		{
			addActionError("No Module Function");
			return ERROR;
		}
		
	}
}
