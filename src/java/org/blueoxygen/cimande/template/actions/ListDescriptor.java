/**
 * 
 */
package org.blueoxygen.cimande.template.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Ikromy
 *
 */
public class ListDescriptor extends ActionSupport implements PersistenceAware{
	private List od = new ArrayList();
	private Descriptor descriptor;
	private PersistenceManager pm;
	
	public String execute(){
		od = pm.findAllSorted(Descriptor.class, "name");
		return SUCCESS;
	}

	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
			this.pm = persistenceManager;
		
	}
	/**
	 * @return Returns the descriptor.
	 */
	public Descriptor getDescriptor() {
		return descriptor;
	}
	/**
	 * @param descriptor The descriptor to set.
	 */
	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}
	/**
	 * @return Returns the od.
	 */
	public List getOd() {
		return od;
	}
	/**
	 * @param od The od to set.
	 */
	public void setOd(List od) {
		this.od = od;
	}

}

