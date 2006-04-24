package org.blueoxygen.cimande.category.actions;

import java.util.List;

import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork.ActionSupport;

public class ListCategoryDescriptor extends ActionSupport implements PersistenceAware{

	private List descriptors;
	protected PersistenceManager pm;
	protected Descriptor descriptor;
	
	public String execute(){
		descriptors = pm.findAllSorted(Descriptor.class,"name");
		
		return SUCCESS;
	}

	public Descriptor getDescriptor() {
		return descriptor;
	}

	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}

	public List getDescriptors() {
		return descriptors;
	}

	public void setDescriptors(List descriptors) {
		this.descriptors = descriptors;
	}

	public PersistenceManager getPersistenceManager() {
		return pm;
	}

	public void setPersistenceManager(PersistenceManager pm) {
		this.pm = pm;
	}
	
	
}
