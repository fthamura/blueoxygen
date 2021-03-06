/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.modulefunction.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.User;

/**
 * @author Amelia
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class ModuleFunctionForm extends CimandeAction implements PersistenceAware{
	protected ModuleFunction moduleFunction;
	protected LogInformation logInfo;
	private User user = new User();
	protected PersistenceManager pm;
	
	private String name="";
	private String description="";
	private int viewActive=0;
	private String tableReferences="";
	private String moduleFunctionId="";
	private String workType="";
	
	private String moduleDescriptorId="";
	private List<Descriptor> moduleDescriptors = new ArrayList<Descriptor>();
	
	public String execute(){
		user = (User) pm.getById(User.class, getCurrentUser().getId());
		if(user.getWorkspace_type().equalsIgnoreCase("flat")){
			workType = "flat";
		}else{
			workType = "";
		}
		return SUCCESS;
	}
	
	/**
	 * @return Returns the moduleFunctionId.
	 */
	public String getModuleFunctionId() {
		return moduleFunctionId;
	}
	/**
	 * @param moduleFunctionId The moduleFunctionId to set.
	 */
	public void setModuleFunctionId(String moduleFunctionId) {
		this.moduleFunctionId = moduleFunctionId;
	}
	/**
	 * @return Returns the description.
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description The description to set.
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return Returns the logInfo.
	 */
	public LogInformation getLogInfo() {
		return logInfo;
	}
	/**
	 * @param logInfo The logInfo to set.
	 */
	public void setLogInfo(LogInformation logInfo) {
		this.logInfo = logInfo;
	}
	
	/**
	 * @return Returns the moduleDescriptorId.
	 */
	public String getModuleDescriptorId() {
		return moduleDescriptorId;
	}
	/**
	 * @param moduleDescriptorId The moduleDescriptorId to set.
	 */
	public void setModuleDescriptorId(String moduleDescriptorId) {
		this.moduleDescriptorId = moduleDescriptorId;
	}
	/**
	 * @return Returns the moduleDescriptors.
	 */
	public List getModuleDescriptors() {
		return moduleDescriptors;
	}
	/**
	 * @param moduleDescriptors The moduleDescriptors to set.
	 */
	public void setModuleDescriptors(List moduleDescriptors) {
		this.moduleDescriptors = moduleDescriptors;
	}
	/**
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
	/**
	 * @return Returns the name.
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name The name to set.
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return Returns the tableReferences.
	 */
	public String getTableReferences() {
		return tableReferences;
	}
	/**
	 * @param tableReferences The tableReferences to set.
	 */
	public void setTableReferences(String tableReferences) {
		this.tableReferences = tableReferences;
	}
	/**
	 * @return Returns the viewActive.
	 */
	public int getViewActive() {
		return viewActive;
	}
	/**
	 * @param viewActive The viewActive to set.
	 */
	public void setViewActive(int viewActive) {
		this.viewActive = viewActive;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getWorkType() {
		return workType;
	}

	public void setWorkType(String workType) {
		this.workType = workType;
	}
	public PersistenceManager getPersistenceManager() {
		return pm;
	}
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
	
	
}
