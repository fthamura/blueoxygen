/*
 * Copyright (c) 2006, Your Corporation. All Rights Reserved.
 */
package foo.example;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork.ActionSupport;

/**
 * <code>HomeAction</code>
 *
 * @author Rainer Hermanns
 */
public class HomeAction extends ActionSupport implements PersistenceAware {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2086994663756266482L;
	private PersistenceManager manager;
	private List companies = new ArrayList();
    /**
     * A default implementation that does nothing an returns "success".
     *
     * @return {@link #SUCCESS}
     */
    public String execute() throws Exception {
    	
    	companies = manager.findAll(ModuleFunction.class);
    	return SUCCESS;
    }

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		// TODO Auto-generated method stub
		this.manager = persistenceManager;
	}

	/**
	 * @return Returns the companies.
	 */
	public List getCompanies() {
		return companies;
	}

	/**
	 * @param companies The companies to set.
	 */
	public void setCompanies(List companies) {
		this.companies = companies;
	}
}
