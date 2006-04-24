/*
 * Created on Jul 27, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.moduledescriptor.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author amelia
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class ListModuleDescriptor extends ActionSupport implements PersistenceAware{
	private List moduleDescriptors = new ArrayList();
	protected Descriptor moduleDescriptor;
	protected PersistenceManager pm;
	
	public String execute()
	{
		moduleDescriptors = pm.findAllSorted(Descriptor.class, "description");
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
		}
	
	

	
	
	/**
	 * @return Returns the moduleDescriptor.
	 */
	public Descriptor getModuleDescriptor() {
		return moduleDescriptor;
	}
	/**
	 * @param moduleDescriptor The moduleDescriptor to set.
	 */
	public void setModuleDescriptor(Descriptor moduleDescriptor) {
		this.moduleDescriptor = moduleDescriptor;
	}
	/**
	 * @return Returns the moduleDescriptors.
	 */
	public List getModuleDescriptors() {
		return moduleDescriptors;
	}
	/**
	 * @param moduleDescriptors The moduleDescriptors to set.
	 */
	public void setModuleDescriptors(List moduleDescriptors) {
		this.moduleDescriptors = moduleDescriptors;
	}
}
