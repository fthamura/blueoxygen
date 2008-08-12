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

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;

/**
 * @author Amelia
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
@Validation
public class AddModuleFunction extends ModuleFunctionForm {
	private String id = "";
	protected Descriptor moduleDescriptor = new Descriptor();
	private String moduleDescriptorId = "";
	private String moduleFunctionId = "";
	protected ModuleFunction mf = new ModuleFunction();

	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "name", message = "Please input name"),
			@RequiredStringValidator(fieldName = "description", message = "Please input description") })
	public String execute() {
		if (getModuleDescriptorId() != null
				&& !"".equalsIgnoreCase(getModuleDescriptorId())) {
			moduleDescriptor = (Descriptor) manager.getById(Descriptor.class,
					getModuleDescriptorId());
		} else {
			moduleDescriptor = null;
		}
		if (getModuleFunctionId() != null
				&& !"".equalsIgnoreCase(getModuleFunctionId())) {
			mf = (ModuleFunction) manager.getById(ModuleFunction.class,
					getModuleFunctionId());
		} else {
			mf = null;
		}

		moduleFunction = new ModuleFunction();
		moduleFunction.setName(getName());
		moduleFunction.setDescription(getDescription());
		moduleFunction.setViewActive(getViewActive());
		moduleFunction.setTableReferences(getTableReferences());
		moduleFunction.setModuleDescriptor(moduleDescriptor);
		moduleFunction.setModuleFunction(mf);

		logInfo = new LogInformation();
		logInfo.setCreateBy(sessionCredentials.getCurrentUser().getId());
		logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(1);
		moduleFunction.setLogInformation(logInfo);

		manager.save(moduleFunction);
		moduleFunctionId = moduleFunction.getId();
		return SUCCESS;
	}

	/**
	 * @return Returns the moduleFunctionId.
	 */
	public String getModuleFunctionId() {
		return moduleFunctionId;
	}

	/**
	 * @param moduleFunctionId
	 *            The moduleFunctionId to set.
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
	 * @param moduleDescriptorId
	 *            The moduleDescriptorId to set.
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
	 * @param id
	 *            The id to set.
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
	 * @param moduleDescriptor
	 *            The moduleDescriptor to set.
	 */
	public void setModuleDescriptor(Descriptor moduleDescriptor) {
		this.moduleDescriptor = moduleDescriptor;
	}
}
