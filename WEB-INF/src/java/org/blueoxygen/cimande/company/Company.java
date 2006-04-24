package org.blueoxygen.cimande.company;

import org.blueoxygen.cimande.DefaultPersistent;
/**
 * 
 * @author gurki
 * @hibernate.class table="company"
 */
public class Company extends DefaultPersistent{
	
	private String name="";
	private String address="";
	private String state="";
	private String zip_number="";
	private String telephone="";
	private String faximile="";
	private String website="";
	private String email="";
	



/**
 * @return Returns the name.
 * @hibernate.property
 */

public String getName(){
	return name;
}

/**
 * @param groupId The groupId to set.
 */

public void setName(String name){
	this.name=name;
}

/**
 * @return Returns the address.
 * @hibernate.property
 */
public String getAddress(){
	return address;
}

public void setAddress(String address) {
	this.address = address;
}
/**
 * 
 * @return Return the email.
 * @hibernate.property column="email"
 */
 
public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}
/**
 * 
 * @return Return the faximile.
 * @hibernate.property column="faximile"
 */

public String getFaximile() {
	return faximile;
}

public void setFaximile(String faximile) {
	this.faximile = faximile;
}
/**
 * 
 * @return Return the state.
 * @hibernate.property column="state"
 */

public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}
/**
 * 
 * @return Return the telephone.
 * @hibernate.property column="telephone"
 */

public String getTelephone() {
	return telephone;
}

public void setTelephone(String telephone) {
	this.telephone = telephone;
}
/**
 * 
 * @return Return the website.
 * @hibernate.property column="website"
 */

public String getWebsite() {
	return website;
}

public void setWebsite(String website) {
	this.website = website;
}
/**
 * 
 * @return Return the zip_number.
 * @hibernate.property column="zip_number"
 */

public String getZip_number() {
	return zip_number;
}

public void setZip_number(String zip_number) {
	this.zip_number = zip_number;
}

}

