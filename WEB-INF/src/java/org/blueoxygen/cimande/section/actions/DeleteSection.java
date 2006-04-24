/*
 * Created on Jul 29, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.section.actions;

/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class DeleteSection extends EditSection{
	public String execute ()
	{
		String result = super.execute();
		
		
		if (result.equalsIgnoreCase(SUCCESS))
		{
			if(section.getSectionDescriptor()==null)
			{
				pm.remove(section);
				return SUCCESS;
			}
				
			else
			{
				section.setSectionDescriptor(null);
				return INPUT;
			}
		}
		else
		{
			addActionError("No Section ");
			return ERROR;
		}
		
	}
}
