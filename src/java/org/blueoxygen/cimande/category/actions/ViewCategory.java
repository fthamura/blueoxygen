/*
 * Created on Jul 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.category.actions;

import org.blueoxygen.cimande.category.Category;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class ViewCategory extends ActionSupport implements PersistenceAware{
	protected PersistenceManager pm;
	private String id="";
	protected Category category; 
	private Category cat;
	public String execute()
	{
		
		if (!id.equalsIgnoreCase(""))
		{
			category = (Category) pm.getById(Category.class, getId());
			return SUCCESS;
		}
		else
		{
			addActionError("CategoryC not found");
			return ERROR;
		}
	}

	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}


	public Category getCat() {
		return cat;
	}


	public void setCat(Category cat) {
		this.cat = cat;
	}


	public Category getCategory() {
		return category;
	}


	public void setCategory(Category category) {
		this.category = category;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}
	
}

