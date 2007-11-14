/*
 * Created on ock 10, 2007
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.security.mvc.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.company.Company;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Abdul Rizal
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class ViewListCompany extends ActionSupport implements PersistenceAware{
	private List perusahaan = new ArrayList();
	protected Company company;
	protected PersistenceManager pm;
	
	public String execute(){
		perusahaan = pm.findAllSorted(Company.class, "name");
		return SUCCESS;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}

	/**
	 * @return the perusahaan
	 */
	public List getPerusahaan() {
		return perusahaan;
	}

	/**
	 * @param perusahaan the perusahaan to set
	 */
	public void setPerusahaan(List perusahaan) {
		this.perusahaan = perusahaan;
	}

	/**
	 * @return the company
	 */
	public Company getCompany() {
		return company;
	}

	/**
	 * @param company the company to set
	 */
	public void setCompany(Company company) {
		this.company = company;

	}
}
	
	