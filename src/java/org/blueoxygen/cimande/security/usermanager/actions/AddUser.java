/**
 * 
 */
package org.blueoxygen.cimande.security.usermanager.actions;

import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;

import org.apache.commons.beanutils.PropertyUtils;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.company.Company;
import org.blueoxygen.cimande.jobdescription.JobDesc;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.util.StringUtils;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;

/**
 * @author Abdul Rizal Adompo
 * 
 */
@Validation
public class AddUser extends UserForm implements SessionCredentialsAware {
	private SessionCredentials sessionCredentials;

	@Validations(
			requiredStrings = { 
					@RequiredStringValidator(fieldName = "user.username", message = "Username can not empty"),
					@RequiredStringValidator(fieldName = "user.password", message = "Password can not empty")
			}, 
			stringLengthFields = { 
					@StringLengthFieldValidator(minLength="3", fieldName = "user.username", message = "Username must have at least 3 characters"),
					@StringLengthFieldValidator(minLength="3", fieldName = "user.password", message = "Password must have at least 3 characters") 
			}
	)
	public String execute() {
		String pass = "";
		StringUtils su = new StringUtils();
//		if (getUser().getUsername().equalsIgnoreCase(""))
//			addActionError("Username can't be empty.");
//
//		if (getUser().getId() == null || "".equalsIgnoreCase(getUser().getId())) {
//			if (getUser().getPassword() == null
//					|| "".equalsIgnoreCase(getUser().getPassword()))
//				addActionError("Password can't be empty.");
//
//			if (getUser().getPassword().length() < 3) {
//				addActionError("Password must have minimal 3 characters !!");
//			}
//		}

		if (hasErrors()) {
			return INPUT;
		} else {
			if (getCompany().getId() != null
					&& !"".equalsIgnoreCase(getCompany().getId())) {
				setCompany((Company) manager.getById(Company.class,
						getCompany().getId()));
			} else {
				addActionError("Company can't be empty");
				setUser(null);
				return INPUT;
			}

			if (getJob().getId() != null
					&& !"".equalsIgnoreCase(getJob().getId())) {
				setJob((JobDesc) manager.getById(JobDesc.class, getJob()
						.getId()));
			} else {
				addActionError("Position can't be empty");
				setUser(null);
				return INPUT;

			}

			LogInformation log;
			if (getUser().getId() == null) {
				log = new LogInformation();
				log.setCreateBy(sessionCredentials.getCurrentUser().getId());
				log.setCreateDate(new Timestamp(System.currentTimeMillis()));
				pass = su.encodeBase64(getUser().getPassword());
			} else if (getUser().getId() != null
					&& "".equalsIgnoreCase(getUser().getId())) {
				log = new LogInformation();
				log.setCreateBy(sessionCredentials.getCurrentUser().getId());
				log.setCreateDate(new Timestamp(System.currentTimeMillis()));
				getUser().setId(null);
				pass = su.encodeBase64(getUser().getPassword());
			} else {
				User temp = getUser();
				setUser((User) manager.getById(User.class, getUser().getId()));
				pass = getUser().getPassword();
				log = getUser().getLogInformation();
				Role role = getUser().getRole();
				try {
					PropertyUtils.copyProperties(getUser(), temp);
					getUser().setRole(role);
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

			getUser().setPassword(pass);
			getUser().setLogInformation(log);
			getUser().setAddress(getAddress());
			getUser().setName(getName());
			getUser().setCompany(getCompany());
			getUser().setJob(getJob());

			try {
				manager.save(getUser());

			} catch (Exception e) {
				addActionError("user already exist");
				setUser(null);
				return INPUT;
			}
			return SUCCESS;
		}
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

}
