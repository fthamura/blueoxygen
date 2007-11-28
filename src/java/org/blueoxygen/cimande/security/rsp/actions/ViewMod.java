/**
 * 
 */
package org.blueoxygen.cimande.security.rsp.actions;

import java.util.ArrayList;
import java.util.List;


import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import com.opensymphony.xwork2.ActionSupport;
/**
 * @author Abdul Rizal Adompo
 *
 */
public class ViewMod extends ActionSupport  implements PersistenceAware{
	private List lihatmodul = new ArrayList();
	protected ViewMod viewmodul;
	protected PersistenceManager pm;
	
	public String execute(){
		lihatmodul= pm.getList("FROM " + ModuleFunction.class.getName() + " mf " +
				"WHERE mf.moduleFunction.id='0' " +
				"AND mf.logInformation.activeFlag=1", null, null);
		return SUCCESS;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
	
	/**
	 * @return the lihatmodul
	 */
	public List getLihatmodul() {
		return lihatmodul;
	}

	/**
	 * @param lihatmodul the lihatmodul to set
	 */
	public void setLihatModul(List lihatmodul) {
		this.lihatmodul = lihatmodul;
	}

	/**
	 * @return the viewmodul
	 */
	public ViewMod getViewmod() {
		return viewmodul;
	}

	/**
	 * @param viewmodul the viewmodul to set
	 */
	public void setViewmodul(ViewMod viewmodul) {
		this.viewmodul = viewmodul;
	}
	
}
	
	
	