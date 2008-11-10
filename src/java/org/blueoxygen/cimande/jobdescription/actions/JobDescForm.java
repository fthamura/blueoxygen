package org.blueoxygen.cimande.jobdescription.actions;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.User;

import com.opensymphony.xwork2.ActionSupport;

public class JobDescForm extends CimandeAction implements PersistenceAware
{
	protected PersistenceManager pm;
	private User user = new User();
	
	private String id;	
	private String name="";
	private String description="";
	private String workType="";
	
	public String execute(){
		user = (User) pm.getById(User.class, getCurrentUser().getId());
		if(user.getWorkspace_type().equalsIgnoreCase("flat")){
			workType = "flat";
		}else{
			workType = "";
		}
		return SUCCESS;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public PersistenceManager getPersistenceManager() {
		return pm;
	}
	public void setPersistenceManager(PersistenceManager pm) {
		this.pm = pm;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	
	
	

	
}
