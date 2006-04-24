/**
 * 
 */
package org.blueoxygen.cimande.template.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.template.TemplateObject;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author Ikromy
 *
 */
public class ListTemplateObject extends ActionSupport implements PersistenceAware{
	private List obj = new ArrayList();
	private TemplateObject templateObject;
	private PersistenceManager pm;
	
	public String execute(){
		obj = pm.findAllSorted(TemplateObject.class, "template_skin");
		return SUCCESS;
	}

	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
			this.pm = persistenceManager;
	}
	
	/**
	 * @return Returns the objects.
	 */
	public TemplateObject getTemplateObject() {
		return templateObject;
	}
	/**
	 * @param objCollection The objects to set.
	 */
	public void setObject(TemplateObject templateObject) {
		this.templateObject = templateObject;
	}
	/**
	 * @return Returns the obj.
	 */
	public List getObj() {
		return obj;
	}
	/**
	 * @param obj The obj to set.
	 */
	public void setobj(List obj) {
		this.obj = obj;
	}

}

