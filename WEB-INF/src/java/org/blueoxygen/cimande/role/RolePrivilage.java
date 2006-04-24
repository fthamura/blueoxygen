/*
 * Created on Aug 11, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.role;

import org.blueoxygen.cimande.DefaultPersistent;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;

/**
 * @author alex
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 * @hibernate.class table="role_privilage"
 */
public class RolePrivilage extends DefaultPersistent{
	
	private Role role;
	private ModuleFunction moduleFunction;
	private int privilage_flag;
	private String url_xml;
	
	/**
	 * @return Returns the privilage_flag.
	 * @hibernate.property
	 */
	public int getPrivilage_flag() {
		return privilage_flag;
	}
	/**
	 * @param privilage_flag The privilage_flag to set.
	 */
	public void setPrivilage_flag(int privilage_flag) {
		this.privilage_flag = privilage_flag;
	}
	/**
	 * @return Returns the role.
	 * @hibernate.many-to-one column="role_id"
	 */
	public Role getRole() {
		return role;
	}
	/**
	 * @param role The role to set.
	 */
	public void setRole(Role role) {
		this.role = role;
	}
	/**
	 * @return Returns the url_xml.
	 * @hibernate.property
	 */
	public String getUrl_xml() {
		return url_xml;
	}
	/**
	 * @param url_xml The url_xml to set.
	 */
	public void setUrl_xml(String url_xml) {
		this.url_xml = url_xml;
	}
	
	/**
	 * @hibernate.many-to-one column="module_function_id"
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
}
