/**
 * 
 */
package org.blueoxygen.cimande.sitemanager;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.role.RolePrivilage;
import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.cimande.role.RoleSitePrivilage;
import org.blueoxygen.cimande.security.LoginFilter;
import org.blueoxygen.cimande.security.User;

/**
 * @author chibi
 *
 */
public class FlatGenerator extends CimandeAction {
	private String roleId = "";
	private String siteId = "";
	private String flat_script = "";
	
	public String execute(){
		
		String mySQL;
		int total_role_site = 0;
		String variableNode = "Flat";
		String FlatJS = "";
		
		FlatChildGenerator FlatChild;
		
		try{
			User us = getCurrentUser();
			this.roleId = us.getRole().getId();
			this.siteId = (String) ServletActionContext.getRequest().getSession().getAttribute(LoginFilter.LOGIN_CIMANDE_SITE);
			
			mySQL = "FROM " + RoleSite.class.getName() + " tmp WHERE tmp.role.id='" + this.roleId + "' AND tmp.site.id='" + this.siteId + "'";
			List<RoleSite> temp = new ArrayList<RoleSite>();
			temp = manager.getList(mySQL, null, null);
			total_role_site = temp.size();
			
			int iFirstNode = 1;
			
			if (total_role_site > 0) {
				mySQL = "FROM tmp in " + RoleSitePrivilage.class + " WHERE tmp.roleSite.site.id = '" + this.siteId + "' AND tmp.roleSite.role.id = '" + this.roleId + "' ORDER BY (tmp.moduleFunction.description)";
				List<RoleSitePrivilage> rsp = new ArrayList<RoleSitePrivilage>();
				rsp = (List<RoleSitePrivilage>) manager.getList(mySQL, null,null);
				System.out.println("RSP");
				for (RoleSitePrivilage tmp : rsp) {
					FlatChild = new FlatChildGenerator(tmp.getModuleFunction().getId(), variableNode, iFirstNode, manager);
					FlatJS = FlatJS + "<li><a class=\"head\" href=\"#\">"+tmp.getModuleFunction().getDescription()+"</a><ul>";
					
					FlatJS = FlatJS + FlatChild.getFlatJS();
					FlatJS = FlatJS + "</ul></li>";
					
					//iFirstNode++;
				}
			}else{
				System.out.println("RP");
				mySQL = "FROM tmp in " + RolePrivilage.class + " WHERE tmp.role.id='" + this.roleId + "' ORDER BY (tmp.moduleFunction.description)";
				List<RolePrivilage> rp = new ArrayList<RolePrivilage>();
				rp = (List<RolePrivilage>) manager.getList(mySQL, null, null);
				
				for (RolePrivilage tmp : rp) {
					FlatChild = new FlatChildGenerator(tmp.getModuleFunction().getId(), variableNode, iFirstNode, manager);
					FlatJS = FlatJS + "<li><a class=\"head\" href=\"#\">"+tmp.getModuleFunction().getDescription()+"</a><ul>";
					
					FlatJS = FlatJS + FlatChild.getFlatJS();
					FlatJS = FlatJS + "</ul></li>";
				}
			}
			flat_script = FlatJS;
			
			return SUCCESS;
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
		
			
		}

	/**
	 * @return the flat_script
	 */
	public String getFlat_script() {
		return flat_script;
	}

	/**
	 * @param flat_script the flat_script to set
	 */
	public void setFlat_script(String flat_script) {
		this.flat_script = flat_script;
	}
		

	
	

}
