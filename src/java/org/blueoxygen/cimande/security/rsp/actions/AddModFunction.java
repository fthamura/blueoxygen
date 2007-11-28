/**
 * 
 */
package org.blueoxygen.cimande.security.rsp.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.role.RoleSite;

/**
 * @author Abdul Rizal Adompo
 *
 */
public class AddModFunction extends Master { 

	public String execute() {
		if(getMfunction().getId() != null && !"".equalsIgnoreCase(getMfunction().getId())){
			setMfunction((ModuleFunction) manager.getById(ModuleFunction.class, getMfunction().getId()));
		} else {
			addActionError("Select Module Function!!");
		}
		if(getRoleSite().getId() != null && !"".equalsIgnoreCase(getRoleSite().getId())){
			setRoleSite((RoleSite) manager.getById(RoleSite.class, getRoleSite().getId()));
		} else {
			addActionError("Select Role Site!!");
		}
		LogInformation log = new LogInformation();
		log.setCreateBy(sessionCredentials.getCurrentUser().getId());
		log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		log.setActiveFlag(1);
		
		getRsp().setModuleFunction(getMfunction());
		getRsp().setRoleSite(getRoleSite());
		getRsp().setSite(getRoleSite().getSite());
		getRsp().setLogInformation(log);
		manager.save(getRsp());
		return SUCCESS;	
	}

}
