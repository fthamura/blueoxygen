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

 
/**
 * @author Amelia
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class UpDateModuleFunction extends ModuleFunctionForm implements SessionCredentialsAware{
	private SessionCredentials sess;
	private String id;
	private String moduleFunctionId="";
	protected Descriptor moduleDescriptor = new Descriptor();
	protected ModuleFunction mf = new ModuleFunction();
	
	private List mfs;

	public String execute(){
		String result = super.execute();
		

		if(getName().equalsIgnoreCase("")){
			addActionError("please input name");
			return INPUT;
		}
		if(getDescription().equalsIgnoreCase("")){
			addActionError("please input description");
			return INPUT;
		}
		moduleFunction = (ModuleFunction) pm.getById(ModuleFunction.class, getId());
		
		String query = " FROM module_function in " + ModuleFunction.class + " WHERE module_function.moduleFunction.id='" + getId() + "'";

		moduleDescriptor = (Descriptor) pm.getById(Descriptor.class, getModuleDescriptorId());
		mf = (ModuleFunction) pm.getById(ModuleFunction.class, getModuleFunctionId());
		
		moduleFunction.setName(getName());
		moduleFunction.setDescription(getDescription());
		moduleFunction.setViewActive(getViewActive());
		moduleFunction.setTableReferences(getTableReferences());
		moduleFunction.setModuleDescriptor(moduleDescriptor);
		moduleFunction.setModuleFunction(mf);
		
		logInfo = moduleFunction.getLogInformation();
		logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		moduleFunction.setLogInformation(logInfo);
		
		pm.save(moduleFunction);
		moduleFunctionId = moduleFunction.getId(); 

		mfs= pm.find(query,null,null);
		
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
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
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
}
