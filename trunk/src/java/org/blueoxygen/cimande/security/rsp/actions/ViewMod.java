/**
 * 
 */
package org.blueoxygen.cimande.security.rsp.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.RolePrivilage;
import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.cimande.role.RoleSitePrivilage;

import com.opensymphony.xwork2.ActionSupport;
/**
 * @author Abdul Rizal Adompo
 *
 */
public class ViewMod extends ActionSupport  implements PersistenceAware{
	private List<ModuleFunction> mfunctions = new ArrayList<ModuleFunction>();
	private RoleSite roleSite = new RoleSite();
	protected PersistenceManager pm;
	
	public String execute(){
		List<RoleSitePrivilage> rsps = new ArrayList<RoleSitePrivilage>();
		List<RolePrivilage> rps = new ArrayList<RolePrivilage>();
		if(getRoleSite().getId() != null && !"".equalsIgnoreCase(getRoleSite().getId())){
			setRoleSite((RoleSite) pm.getById(RoleSite.class, getRoleSite().getId()));

			rps = pm.getList("FROM " + RolePrivilage.class.getName() + " rp " +
					"WHERE rp.role.id='" + getRoleSite().getRole().getId() + "' " +
					"AND rp.logInformation.activeFlag=1", null, null);
			for(RolePrivilage rp : rps){
				mfunctions.add(rp.getModuleFunction());
			}
			
			rsps = pm.getList("FROM " + RoleSitePrivilage.class.getName() + " rsp " +
					"WHERE rsp.roleSite.id='" + getRoleSite().getId() + "' " +
					"AND rsp.logInformation.activeFlag=1", null, null);
			for(RoleSitePrivilage rsp : rsps){
				mfunctions.remove(rsp.getModuleFunction());
			}
			
		}
		return SUCCESS;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}

	public List<ModuleFunction> getMfunctions() {
		return mfunctions;
	}

	public void setMfunctions(List<ModuleFunction> mfunctions) {
		this.mfunctions = mfunctions;
	}

	public RoleSite getRoleSite() {
		return roleSite;
	}

	public void setRoleSite(RoleSite roleSite) {
		this.roleSite = roleSite;
	}
	
}
	
	
	