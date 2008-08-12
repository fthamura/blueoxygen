/*
 * Created on ock 10, 2007
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.security.usermanager.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.jobdescription.JobDesc;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Abdul Rizal
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class ViewJob extends ActionSupport implements PersistenceAware{
	private List jabatan = new ArrayList();
	protected ViewJob viewjob;
	protected PersistenceManager pm;
	
	public String execute(){
		jabatan = pm.findAllSorted(JobDesc.class, "name");
		return SUCCESS;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}

	/**
	 * @return the jabatan
	 */
	public List getJabatan() {
		return jabatan;
	}

	/**
	 * @param jabatan the jabatan to set
	 */
	public void setJabatan(List jabatan) {
		this.jabatan = jabatan;
	}

	/**
	 * @return the job
	 */
	public ViewJob getJob() {
		return viewjob;
	}

	/**
	 * @param job the job to set
	 */
	public void setJob(ViewJob job) {
		this.viewjob = job;
	}
}
	