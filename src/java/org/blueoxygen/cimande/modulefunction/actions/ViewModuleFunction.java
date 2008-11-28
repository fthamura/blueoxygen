/*
 * Created on Jul 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.modulefunction.actions;

import java.util.List;

import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Amelia
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Generation - Code and Comments
 */
public class ViewModuleFunction extends ModuleFunctionForm {
	private String id;
	protected ModuleFunction moduleFunction = new ModuleFunction();
	private String module_function_id;

	private List<ModuleFunction> mfs;

	public String execute() {

		if(!getId().equalsIgnoreCase("")) {
			moduleFunction = (ModuleFunction) pm.getById(ModuleFunction.class, getId());
			mfs = moduleFunction.getModuleFunctions();
			return SUCCESS;
		} else {
			addActionError("Module Function not found");
			return ERROR;
		}
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
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}

	public String getModule_function_id() {
		return module_function_id;
	}

	public void setModule_function_id(String module_function_id) {
		this.module_function_id = module_function_id;
	}

	public List getMfs() {
		return mfs;
	}

	public void setMfs(List mfs) {
		this.mfs = mfs;
	}

}
