/**
 * 
 */
package org.blueoxygen.cimande.template.actions;

/**
 * @author Ikromy
 *
 */
public class DeleteTemplateObjectDetail extends ViewTemplateObjectDetail {
	public String execute ()
	{
		String result = super.execute();
		
		if (result.equalsIgnoreCase(SUCCESS))
			if (objectDetail.getDescription() == null && 
					objectDetail.getCollection()== null && 
					objectDetail.getTemplateObject() == null)
			{
				pm.remove(objectDetail);
				return SUCCESS;
			}
			else
			{
				objectDetail.setDescription(null);
				objectDetail.setCollection(null);
				objectDetail.setTemplateObject(null);
				return INPUT;
			}
		else
		{
			addActionError("No Template Object Detail");
			return ERROR;
		}
		
	}

}
