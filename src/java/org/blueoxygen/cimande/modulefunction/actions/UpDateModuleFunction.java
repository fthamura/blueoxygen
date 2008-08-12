/*
 * Created on Jul 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.modulefunction.actions;

import java.sql.Timestamp;
import java.util.List;

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
 * Preferences - Java - Code Generation - Code and Comments
 */
@Validation
public class UpDateModuleFunction extends ModuleFunctionForm {
	private String id;
	private String moduleFunctionId = "";
	protected Descriptor moduleDescriptor = new Descriptor();
	protected ModuleFunction mf = new ModuleFunction();

	private List mfs;

	@Validations(requiredStrings = {
			@RequiredStringValidator(fieldName = "name", message = "Please input name"),
			@RequiredStringValidator(fieldName = "description", message = "Please input description") })
	public String execute() {
		String result = super.execute();

		moduleFunction = (ModuleFunction) manager.getById(ModuleFunction.class,
				getId());

		String query = "SELECT module_function FROM "
				+ ModuleFunction.class.getName()
				+ " module_function WHERE module_function.moduleFunction.id='"
				+ getId() + "'";

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

		moduleFunction.setName(getName());
		moduleFunction.setDescription(getDescription());
		moduleFunction.setViewActive(getViewActive());
		moduleFunction.setTableReferences(getTableReferences());
		moduleFunction.setModuleDescriptor(moduleDescriptor);
		moduleFunction.setModuleFunction(mf);

		logInfo = moduleFunction.getLogInformation();
		logInfo.setLastUpdateBy(getCurrentUser().getId());
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		moduleFunction.setLogInformation(logInfo);

		manager.save(moduleFunction);
		moduleFunctionId = moduleFunction.getId();

		mfs = manager.find(query, null, null);

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
}
