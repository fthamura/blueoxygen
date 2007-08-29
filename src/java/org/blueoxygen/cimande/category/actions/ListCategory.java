/*
 * Created on Aug 3, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.category.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.category.Category;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author dwi miyanto [ mee_andto@yahoo.com ]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class ListCategory extends ActionSupport implements PersistenceAware{
	private List categories = new ArrayList();
	protected Category category;
	protected PersistenceManager pm;
	

	public String execute(){
		categories = pm.findAllSorted(Category.class, "code");		
		return SUCCESS;
	}

	public void setPersistenceManager(PersistenceManager pm) {
		this.pm = pm;
	}

	public List getCategories() {
		return categories;
	}

	public void setCategories(List categories) {
		this.categories = categories;
	}


	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public PersistenceManager getPersistenceManager() {
		return pm;
	}
		
}
