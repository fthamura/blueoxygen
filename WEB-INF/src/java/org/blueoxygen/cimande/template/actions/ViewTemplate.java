/*
 * Created on Jul 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.template.actions;

import org.blueoxygen.cimande.template.Template;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author fauzan prasetyo™[n0mad_hier@yahoo.com]
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Name and Comments
 */
public class ViewTemplate extends ActionSupport implements PersistenceAware{
	protected PersistenceManager pm;
	private String id;
	protected Template template; 

	public String execute()
	{
		
		if (!id.equalsIgnoreCase(""))
		{
			template = (Template) pm.getById(Template.class, getId());
			return SUCCESS;
		}
		else
		{
			addActionError("Template not found");
			return ERROR;
		}
	}

	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}



	public Template getTemplate() {
		return template;
	}


	public void setTemplate(Template template) {
		this.template = template;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}
	
}

