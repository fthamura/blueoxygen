/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.template.actions;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.template.TemplateObject;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author amix {amix_adib@yahoo.com}
 *
 */
public class ViewTemplateObject extends ActionSupport implements PersistenceAware {
	
	protected PersistenceManager pm;
	protected TemplateObject object;
	
	private String id = "";
	
	public String execute(){
		
		if (!id.equalsIgnoreCase(""))
		{
			object = (TemplateObject) pm.getById(TemplateObject.class, getId());
			return SUCCESS;
		}
		else
		{
			addActionError("Template Object not found");
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

	/**
	 * @return Returns the object.
	 */
	public TemplateObject getObject() {
		return object;
	}

	/**
	 * @param object The object to set.
	 */
	public void setObject(TemplateObject object) {
		this.object = object;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}	
	

}
