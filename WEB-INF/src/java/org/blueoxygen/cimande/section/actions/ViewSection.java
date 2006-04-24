/*
 * Created on Jul 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.section.actions;

import org.blueoxygen.cimande.section.Section;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class ViewSection extends ActionSupport implements PersistenceAware{
	protected PersistenceManager pm;
	private String id="";
	protected Section section; 

	public String execute()
	{
		
		if (!id.equalsIgnoreCase(""))
		{
			section = (Section) pm.getById(Section.class, getId());
			return SUCCESS;
		}
		else
		{
			addActionError("Section not found");
			return ERROR;
		}
	}

	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}



	public Section getSection() {
		return section;
	}


	public void setSection(Section section) {
		this.section = section;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}
	
}

