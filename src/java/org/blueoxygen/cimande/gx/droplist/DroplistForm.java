package org.blueoxygen.cimande.gx.droplist;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.gx.entity.GxDroplistName;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.User;

import com.opensymphony.xwork2.ActionSupport;

public class DroplistForm extends CimandeAction implements PersistenceAware {
	protected PersistenceManager manager;
	private GxDroplistName name = new GxDroplistName();
	private GxDroplistName parent = new GxDroplistName();
	private GxDroplistValue value = new GxDroplistValue();
	private List<GxDroplistName> names = new ArrayList<GxDroplistName>();
	private String report = "";
	private User user = new User();
	private String workType="";
	
	public String execute(){
		user = (User) manager.getById(User.class, getCurrentUser().getId());
		if(user.getWorkspace_type().equalsIgnoreCase("flat")){
			workType = "flat";
		}else{
			workType = "";
		}
		if(getName().getId() != null && !"".equalsIgnoreCase(getName().getId())){
			setName((GxDroplistName) manager.getById(GxDroplistName.class, getName().getId()));
			getName().getChilds();
			getName().getValues();
		}
		if(getValue().getId() != null && !"".equalsIgnoreCase(getValue().getId())){
			setValue((GxDroplistValue) manager.getById(GxDroplistValue.class, getValue().getId()));
		}
		setNames((ArrayList<GxDroplistName>)manager.getList("FROM " + GxDroplistName.class.getName() 
				+ " n WHERE n.logInformation.activeFlag=1" , null, null));
		return SUCCESS;
	}

	public GxDroplistName getName() {
		return name;
	}

	public void setName(GxDroplistName name) {
		this.name = name;
	}

	public GxDroplistValue getValue() {
		return value;
	}

	public void setValue(GxDroplistValue value) {
		this.value = value;
	}

	public List<GxDroplistName> getNames() {
		return names;
	}

	public void setNames(List<GxDroplistName> names) {
		this.names = names;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

	public GxDroplistName getParent() {
		return parent;
	}

	public void setParent(GxDroplistName parent) {
		this.parent = parent;
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
