package org.blueoxygen.cimande.gx.access;

import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.PropertyUtils;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.gx.entity.GxWindowRole;
import org.blueoxygen.cimande.gx.entity.GxWindowRoleAccess;
import org.blueoxygen.cimande.role.Role;

public class SaveWindowRole extends WindowRoleForm {
	private List<GxWindowRoleAccess> wrAccess = new ArrayList<GxWindowRoleAccess>();
	private GxWindowRoleAccess wra = new GxWindowRoleAccess();
	public String execute(){
		if(getWindow().getId() != null && "".equalsIgnoreCase(getWindow().getId())){
			setWindow((GxWindow) manager.getById(GxWindow.class, getWindow().getId()));
		}
		if(getRole().getId() != null && "".equalsIgnoreCase(getRole().getId())){
			setRole((Role) manager.getById(Role.class, getRole().getId()));
		}
		
		
		LogInformation log;
		if(getWindowRole().getId() == null){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
		} else if(getWindowRole().getId() != null && "".equalsIgnoreCase(getWindowRole().getId())){
			log = new LogInformation();
			log.setCreateBy(sessionCredentials.getCurrentUser().getId());
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			getWindowRole().setId(null);
		} else {
			GxWindowRole temp = getWindowRole();
			setWindowRole((GxWindowRole)manager.getById(GxWindowRole.class, getWindowRole().getId()));
			log = getWindowRole().getLogInformation();
			try {
				PropertyUtils.copyProperties(getWindowRole(), temp);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			} catch (NoSuchMethodException e) {
				e.printStackTrace();
			}
		}
		log.setActiveFlag(1);
		log.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));

		getWindowRole().setLogInformation(log);
		getWindowRole().setRole(getRole());
		getWindowRole().setWindow(getWindow());
		
		manager.save(getWindowRole());
		if(getAccess().size() > 0){
			if(getWindowRole().getAccess().size() > 0){
				for(GxWindowRoleAccess wra : getWindowRole().getAccess()){
					manager.remove(wra);
				}
			}
			for(String i : getAccess()){
				wra = new GxWindowRoleAccess();
				wra.setAccessName((GxDroplistValue) manager.getById(GxDroplistValue.class, i));
				wra.setWindowRole(getWindowRole());
				wra.setLogInformation(log);
				manager.save(wra);
				wrAccess.add(wra);
			}
		}
		return SUCCESS;
	}
}
