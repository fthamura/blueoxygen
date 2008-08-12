/*
 * Created on Aug 3, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.modulefunction.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Amelia
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class ListModuleFunction extends CimandeAction {
	private List moduleFunctions = new ArrayList();
	protected ModuleFunction moduleFunction;
	
	public String execute(){
		moduleFunctions = manager.findAllSorted(ModuleFunction.class, "name");
		return SUCCESS;
	}

	/**
	 * @return Returns the moduleFunction.
	 */
	public ModuleFunction getModuleFunction() {
		return moduleFunction;
	}
	/**
	 * @param moduleFunction The moduleFunction to set.
	 */
	public void setModuleFunction(ModuleFunction moduleFunction) {
		this.moduleFunction = moduleFunction;
	}
	/**
	 * @return Returns the moduleFunctions.
	 */
	public List getModuleFunctions() {
		return moduleFunctions;
	}
	/**
	 * @param moduleFunctions The moduleFunctions to set.
	 */
	public void setModuleFunctions(List moduleFunctions) {
		this.moduleFunctions = moduleFunctions;
	}
}
