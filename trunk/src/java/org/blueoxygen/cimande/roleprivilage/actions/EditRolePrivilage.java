/*******************************************************************************
 * Copyright (c) 2005 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.roleprivilage.actions;



import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.role.Role;


/**
 * @author mee_andto@yahoo.com
 *
 */
public class EditRolePrivilage extends ViewRolePrivilage{
	
	protected Role role;
	private String role_id = "";
	protected ModuleFunction moduleFunction;
	private String module_function_id = "";

	public String execute() {

		String result = super.execute();
		return SUCCESS;
		
	}

	public String getModule_function_id() {
		return module_function_id;
	}

	public void setModule_function_id(String module_function_id) {
		this.module_function_id = module_function_id;
	}

	public ModuleFunction getModuleFunction() {
		return moduleFunction;
	}

	public void setModuleFunction(ModuleFunction moduleFunction) {
		this.moduleFunction = moduleFunction;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getRole_id() {
		return role_id;
	}

	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}

}
