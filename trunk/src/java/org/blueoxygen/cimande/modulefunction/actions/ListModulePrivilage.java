/*
 * Created on Aug 11, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
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
 * @author alex
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Generation - Code and Comments
 */
public class ListModulePrivilage extends CimandeAction {
	protected ModuleFunction moduleFunction;
	protected List moduleFunctions = new ArrayList();

	public String execute() {
		String query = "SELECT module_function FROM "
				+ ModuleFunction.class.getName()
				+ " module_function WHERE module_function.moduleFunction.id='"
				+ "0" + "'";

		moduleFunctions = manager.getList(query, null, null);
		return SUCCESS;

	}

	/**
	 * @return Returns the moduleFunction.
	 */
	public ModuleFunction getModuleFunction() {
		return moduleFunction;
	}

	/**
	 * @param moduleFunction
	 *            The moduleFunction to set.
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
	 * @param moduleFunctions
	 *            The moduleFunctions to set.
	 */
	public void setModuleFunctions(List moduleFunctions) {
		this.moduleFunctions = moduleFunctions;
	}
}
