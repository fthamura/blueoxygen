/**
 * 
 */
package org.blueoxygen.cimande.security.mvc.actions;

import java.util.ArrayList;
import java.util.List;


import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;

import com.opensymphony.xwork2.ActionSupport;
/**
 * @author Abdul Rizal Adompo
 *
 */
public class ViewRole extends ActionSupport  implements PersistenceAware{
	private List lihatrole = new ArrayList();
	protected ViewRole viewrole;
	protected PersistenceManager pm;
	
	public String execute(){
		lihatrole = pm.findAllSorted(Role.class, "name");
		return SUCCESS;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
	
	/**
	 * @return the lihatrole
	 */
	public List getLihatrole() {
		return lihatrole;
	}

	/**
	 * @param lihatrole the lihatrole to set
	 */
	public void setLihatRole(List lihatrole) {
		this.lihatrole = lihatrole;
	}

	/**
	 * @return the viewrole
	 */
	public ViewRole getViewrole() {
		return viewrole;
	}

	/**
	 * @param viewrole the viewrole to set
	 */
	public void setViewrole(ViewRole viewrole) {
		this.viewrole = viewrole;
	}
	
}
	
	
	