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
public class MenuGenerator extends CimandeAction {
	private String roleId = "";
	private String siteId = "";
	private String menu_script = "";

	public String execute(){
		
		String mySQL;
		int total_role_site = 0;
		String variableNode = "menu";
		String MenuJS = "";
		
		MenuChildGenerate MenuChild;
		
		try {
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
				
				for (RoleSitePrivilage tmp : rsp) {
					MenuChild = new MenuChildGenerate(tmp.getModuleFunction().getId(), variableNode, iFirstNode, manager);
					MenuJS = MenuJS + "<li onmouseover=\"Element.addClassName(this,'over')\" onmouseout=\"Element.removeClassName(this,'over')\" class=\"parent level"+iFirstNode+"\"><span><a href=\"#\" onclick=\"return false\" class=\"\">"+tmp.getModuleFunction().getDescription()+"</a></span><ul>";
					
					MenuJS = MenuJS + MenuChild.getMenuJS(iFirstNode);
					MenuJS = MenuJS + "</ul></li>";
					
					//iFirstNode++;
				}
			}else{
				mySQL = "FROM tmp in " + RolePrivilage.class + " WHERE tmp.role.id='" + this.roleId + "' ORDER BY (tmp.moduleFunction.description)";
				List<RolePrivilage> rp = new ArrayList<RolePrivilage>();
				rp = (List<RolePrivilage>) manager.getList(mySQL, null, null);
				
				for (RolePrivilage tmp : rp) {
					MenuChild = new MenuChildGenerate(tmp.getModuleFunction().getId(), variableNode, iFirstNode, manager);
					MenuJS = MenuJS + "<li class=\"parent level0\"><span>"+tmp.getModuleFunction().getDescription()+"</span><ul>";
					
					MenuJS = MenuJS + MenuChild.getMenuJS(iFirstNode);
					MenuJS = MenuJS + "</ul></li>";
				}
			}
			menu_script = MenuJS;
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
	 * @return the menu_script
	 */
	public String getMenu_script() {
		return menu_script;
	}

	/**
	 * @param menu_script the menu_script to set
	 */
	public void setMenu_script(String menu_script) {
		this.menu_script = menu_script;
	}
	
	
}
