/**
 * 
 */
package org.blueoxygen.cimande.registration;

import org.blueoxygen.cimande.DefaultPersistent32;

/**
 * @author pasir
 * @hibernate.class table="jug_member"
 */
public class JUGMember extends DefaultPersistent32{
	private String firstName;
	private String lastName;
	private String position;
	private String sex;
	private String company;
	private String email;
	private String homeAddress;
	private String homePhone;
	private String companyAddress;
	private String companyPhone;
	/**
	 * @return Returns the company.
	 * @hibernate.property
	 */
	public String getCompany() {
		return company;
	}
	/**
	 * @param company The company to set.
	 */
	public void setCompany(String company) {
		this.company = company;
	}
	/**
	 * @return Returns the companyAddress.
	 * @hibernate.property
	 */
	public String getCompanyAddress() {
		return companyAddress;
	}
	/**
	 * @param companyAddress The companyAddress to set.
	 */
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	/**
	 * @return Returns the companyPhone.
	 * @hibernate.property
	 */
	public String getCompanyPhone() {
		return companyPhone;
	}
	/**
	 * @param companyPhone The companyPhone to set.
	 */
	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}
	/**
	 * @return Returns the email.
	 * @hibernate.property
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email The email to set.
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return Returns the firstName.
	 * @hibernate.property
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName The firstName to set.
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return Returns the homeAddress.
	 * @hibernate.property
	 */
	public String getHomeAddress() {
		return homeAddress;
	}
	/**
	 * @param homeAddress The homeAddress to set.
	 */
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	/**
	 * @return Returns the homePhone.
	 * @hibernate.property
	 */
	public String getHomePhone() {
		return homePhone;
	}
	/**
	 * @param homePhone The homePhone to set.
	 */
	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}
	/**
	 * @return Returns the lastName.
	 * @hibernate.property
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName The lastName to set.
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return Returns the position.
	 * @hibernate.property
	 */
	public String getPosition() {
		return position;
	}
	/**
	 * @param position The position to set.
	 */
	public void setPosition(String position) {
		this.position = position;
	}
	/**
	 * @return Returns the sex.
	 * @hibernate.property
	 */
	public String getSex() {
		return sex;
	}
	/**
	 * @param sex The sex to set.
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}
}
