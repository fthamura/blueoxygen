/*
 * Created on Jul 29, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.category.actions;

/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class DeleteCategory extends EditCategory{
	public String execute ()
	{
		String result = super.execute();
		
		
		if (result.equalsIgnoreCase(SUCCESS))
		{
			if(category.getCategoryDescriptor()==null)
			{
				pm.remove(category);
				return SUCCESS;
			}
				
			else
			{
				category.setCategoryDescriptor(null);
				return INPUT;
			}
		}
		else
		{
			addActionError("No Category ");
			return ERROR;
		}
		
	}
}
