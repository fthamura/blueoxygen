/**
 * 
 */
package org.blueoxygen.cimande.template.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.descriptors.Collection;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Ikromy
 *
 */
public class ListCollection extends ActionSupport implements PersistenceAware{
	private List oc = new ArrayList();
	private Collection collection;
	private PersistenceManager pm;
	
	public String execute(){
		oc = pm.findAllSorted(Collection.class, "name");
		return SUCCESS;
	}

	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
			this.pm = persistenceManager;
	}
	
	/**
	 * @return Returns the collection.
	 */
	public Collection getCollection() {
		return collection;
	}
	/**
	 * @param collection The collection to set.
	 */
	public void setCollection(Collection collection) {
		this.collection = collection;
	}
	/**
	 * @return Returns the oc.
	 */
	public List getOc() {
		return oc;
	}
	/**
	 * @param oc The oc to set.
	 */
	public void setOc(List oc) {
		this.oc = oc;
	}

}
