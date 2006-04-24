/*
 * Created on Aug 3, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.section.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.section.Section;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author dwi miyanto [ mee_andto@yahoo.com ]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class ListSection extends ActionSupport implements PersistenceAware{
	private List sections = new ArrayList();
	protected Section Sect;
	protected PersistenceManager pm;
	
	public String execute(){
		sections = pm.findAllSorted(Section.class, "code");
		return SUCCESS;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}

	public List getSections() {
		return sections;
	}

	public void setSections(List sections) {
		this.sections = sections;
	}


	public Section getSect() {
		return Sect;
	}

	public void setSect(Section sect) {
		Sect = sect;
	}

	public PersistenceManager getPersistenceManager() {
		return pm;
	}
	
}
