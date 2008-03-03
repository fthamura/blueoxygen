/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.modulefunction.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;

import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;


/**
 * @author Amelia
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AddModuleFunction extends ModuleFunctionForm implements SessionCredentialsAware{
	private SessionCredentials sess;
	private String id="";
	protected Descriptor moduleDescriptor = new Descriptor();
	private String moduleDescriptorId="";
	private String moduleFunctionId="";
	protected ModuleFunction mf = new ModuleFunction();

	public String execute(){
		if(getModuleDescriptorId() != null && !"".equalsIgnoreCase(getModuleDescriptorId())){
			moduleDescriptor = (Descriptor) pm.getById(Descriptor.class, getModuleDescriptorId());
		} else {
			moduleDescriptor = null;
		}
		if(getModuleFunctionId() != null && !"".equalsIgnoreCase(getModuleFunctionId())){
			mf = (ModuleFunction) pm.getById(ModuleFunction.class, getModuleFunctionId());
		} else {
			mf = null;
		}
		if(getName().equalsIgnoreCase("")){
			addActionError("please input name");
			return INPUT;
		}
		if(getDescription().equalsIgnoreCase("")){
			addActionError("please input description");
			return INPUT;
		}

		moduleFunction = new ModuleFunction();
		moduleFunction.setName(getName());
		moduleFunction.setDescription(getDescription());
		moduleFunction.setViewActive(getViewActive());
		moduleFunction.setTableReferences(getTableReferences());
		moduleFunction.setModuleDescriptor(moduleDescriptor);
		moduleFunction.setModuleFunction(mf);

		logInfo = new LogInformation();
		logInfo.setCreateBy(sess.getCurrentUser().getId());
		logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		moduleFunction.setLogInformation(logInfo);

		pm.save(moduleFunction);
		moduleFunctionId = moduleFunction.getId(); 
		return SUCCESS;
	}
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;

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
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}
	/**
	 * @param id The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * @return Returns the moduleDescriptor.
	 */
	public Descriptor getModuleDescriptor() {
		return moduleDescriptor;
	}
	/**
	 * @param moduleDescriptor The moduleDescriptor to set.
	 */
	public void setModuleDescriptor(Descriptor moduleDescriptor) {
		this.moduleDescriptor = moduleDescriptor;
	}
}
