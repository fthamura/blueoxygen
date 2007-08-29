/**
 * 
 */
package org.blueoxygen.cimande.template.actions;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.template.TemplateObjectDetail;

import com.opensymphony.xwork2.ActionSupport;
/**
 * @author Ikromy
 *
 */
public class ViewTemplateObjectDetail extends ActionSupport implements PersistenceAware {
	
	protected PersistenceManager pm;
	protected TemplateObjectDetail objectDetail;
	
	private String id;
	
	public String execute(){
		
		if (!id.equalsIgnoreCase(""))
		{
			objectDetail = (TemplateObjectDetail) pm.getById(TemplateObjectDetail.class, getId());
			return SUCCESS;
		}
		else
		{
			addActionError("Template Object Detail not found");
			return ERROR;
		}
	}
	
	/**
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
	
	public TemplateObjectDetail getObjectDetail() {
		return objectDetail;
	}

	public void setObjectDetail(TemplateObjectDetail objectDetail) {
		this.objectDetail = objectDetail;
	}
	

}
