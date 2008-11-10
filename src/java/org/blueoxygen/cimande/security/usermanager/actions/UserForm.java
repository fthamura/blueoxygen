
package org.blueoxygen.cimande.security.usermanager.actions;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.company.Company;
import org.blueoxygen.cimande.jobdescription.JobDesc;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.Address;
import org.blueoxygen.cimande.security.Name;
import org.blueoxygen.cimande.security.User;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Rizal
 */
public class UserForm extends CimandeAction implements PersistenceAware {
	
	protected PersistenceManager manager;
	private User user = new User();
	private User userFlat = new User();
	private Address address = new Address();
	private Name name = new Name();
	private JobDesc job = new JobDesc();
	private Company company = new Company();
	private String workType="";
	
	public String execute(){
		if(getUser().getId() != null && !"".equalsIgnoreCase(getUser().getId())){
			setUser((User) manager.getById(User.class, getUser().getId()));
		}
		userFlat = (User) manager.getById(User.class, getCurrentUser().getId());
		if(userFlat.getWorkspace_type().equalsIgnoreCase("flat")){
			workType = "flat";
		}else{
			workType = "";
		}
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Name getName() {
		return name;
	}

	public void setName(Name name) {
		this.name = name;
	}

	public JobDesc getJob() {
		return job;
	}

	public void setJob(JobDesc job) {
		this.job = job;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	/**
	 * @return the workType
	 */
	public String getWorkType() {
		return workType;
	}

	/**
	 * @param workType the workType to set
	 */
	public void setWorkType(String workType) {
		this.workType = workType;
	}

	/**
	 * @return the userFlat
	 */
	public User getUserFlat() {
		return userFlat;
	}

	/**
	 * @param userFlat the userFlat to set
	 */
	public void setUserFlat(User userFlat) {
		this.userFlat = userFlat;
	}
	
	
	
}
