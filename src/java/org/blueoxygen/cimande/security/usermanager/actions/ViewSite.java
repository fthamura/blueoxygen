/**
 * 
 */
package org.blueoxygen.cimande.security.usermanager.actions;

import java.util.ArrayList;
import java.util.List;


import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.site.Site;

import com.opensymphony.xwork2.ActionSupport;
/**
 * @author Abdul Rizal Adompo
 *
 */
public class ViewSite extends ActionSupport  implements PersistenceAware{
	private List lihatsite = new ArrayList();
	protected ViewSite viewsite;
	protected PersistenceManager pm;
	
	public String execute(){
		lihatsite = pm.findAllSorted(Site.class, "name");
		return SUCCESS;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
	
	/**
	 * @return the lihatsite
	 */
	public List getLihatsite() {
		return lihatsite;
	}

	/**
	 * @param lihatsite the lihatsite to set
	 */
	public void setLihatSite(List lihatsite) {
		this.lihatsite = lihatsite;
	}

	/**
	 * @return the viewsite
	 */
	public ViewSite getViewsite() {
		return viewsite;
	}

	/**
	 * @param viewsite the viewsite to set
	 */
	public void setViewrole(ViewSite viewrole) {
		this.viewsite = viewsite;
	}
	
}
	
	
	