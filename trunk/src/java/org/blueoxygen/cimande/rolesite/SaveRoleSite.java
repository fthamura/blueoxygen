package org.blueoxygen.cimande.rolesite;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.cimande.site.Site;

public class SaveRoleSite extends RoleSiteForm {
	public String execute(){
		if(getRole().getId() != null && !"".equalsIgnoreCase(getRole().getId())){
			setRole((Role) manager.getById(Role.class, getRole().getId()));
		} else {
			addActionError("Select role first");
			return "select_role";
		}
		if(getSite().getId() != null && !"".equalsIgnoreCase(getSite().getId())){
			setSite((Site) manager.getById(Site.class, getSite().getId()));
		} else {
			addActionError("Select Site");
			return INPUT;
		}
		LogInformation log = new LogInformation();
		log.setActiveFlag(1);
		log.setCreateBy(sessionCredentials.getCurrentUser().getId());
		log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		
		getRolesite().setRole(getRole());
		getRolesite().setSite(getSite());
		getRolesite().setLogInformation(log);
		manager.save(getRolesite());
		return SUCCESS;
	}

}
