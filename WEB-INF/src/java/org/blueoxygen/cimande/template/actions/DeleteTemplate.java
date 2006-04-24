/*
 * Created on Jul 29, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.template.actions;

/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *@author fauzan prasetyo™
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Name and Comments
 */
public class DeleteTemplate extends EditTemplate{
	public String execute ()
	{
		String result = super.execute();
		
		
		if (result.equalsIgnoreCase(SUCCESS))
		{
			if(template.getDescriptor() == null)
			{
				pm.remove(template);
				return SUCCESS;
			}
				
			else
			{
				template.getDescriptor();
				return INPUT;
			}
		}
		else
		{
			addActionError("No Template ");
			return ERROR;
		}
		
	}
}
