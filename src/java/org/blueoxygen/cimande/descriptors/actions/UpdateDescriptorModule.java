package org.blueoxygen.cimande.descriptors.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.descriptors.DescriptorModule;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;

public class UpdateDescriptorModule extends DescriptorForm{
	private String description;
	private String pesan;
	public String execute(){
		if(getDescr().getId()!=null && !"".equalsIgnoreCase(getDescr().getId())){
			System.out.println("tess ");	
		}
		
		setDescr((Descriptor) pm.getById(Descriptor.class, getId()));
		setDroplistValue((GxDroplistValue) pm.getById(GxDroplistValue.class, getDroplistValue().getId()));
		setDescriptorModules(pm.getList("SELECT m FROM "+DescriptorModule.class.getName()+" m WHERE m.descriptor.id= '"+getDescr().getId()+"' AND m.droplistValue.id= '"+getDroplistValue().getId()+"' AND m.descriptor.id= '"+getDescr().getId()+"'", null, null));
		
		
		
		if(getDescriptorModules().isEmpty()){
			DescriptorModule module = new DescriptorModule();
			LogInformation logInfo = new LogInformation();
			
			logInfo.setActiveFlag(1);
			logInfo.setCreateBy(sessionCredentials.getCurrentUser().getId());
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
			
			module.setDescriptor(getDescr());
			module.setDroplistValue(getDroplistValue());
			module.setLogInformation(logInfo);
			
			pm.save(module);
			setDescriptorModule(module);
		}else{
			setName(descr.getName());
			setDescription(descr.getDescription());
			setUrlAction(descr.getUrlAction());
			setUrlDescriptor(descr.getUrlDescriptor());
			setTypeFlag(descr.getTypeFlag());
			setDescriptorFlag(descr.getDescriptorFlag());
			setActiveFlag(descr.getLogInformation().getActiveFlag());
			if(descr.getWindow() != null){
				setWindowId(descr.getWindow().getId());
			}
			
			addActionError("Descriptor Module is Exist");
			setDescriptorModules(pm.getList("SELECT m FROM "+DescriptorModule.class.getName()+" m WHERE m.descriptor.id= '"+getDescr().getId()+"' ", null, null));
		}
		
		
		if(hasErrors()){
			setDescr((Descriptor) pm.getById(Descriptor.class, getId()));
			setDescriptorModules(pm.getList("SELECT m FROM "+DescriptorModule.class.getName()+" m WHERE m.descriptor.id= '"+getDescr().getId()+"' ", null, null));
			return INPUT;
			
		}
		return SUCCESS;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPesan() {
		return pesan;
	}
	public void setPesan(String pesan) {
		this.pesan = pesan;
	}
}
