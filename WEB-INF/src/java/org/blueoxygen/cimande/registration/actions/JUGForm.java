package org.blueoxygen.cimande.registration.actions;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.registration.JUGMember;

import com.opensymphony.xwork.ActionSupport;

public class JUGForm extends ActionSupport implements PersistenceAware{
	protected JUGMember jug = new JUGMember();
	protected PersistenceManager pm ;
	protected LogInformation logInfo = new LogInformation();
	/**
	 * @return Returns the jug.
	 */
	public JUGMember getJug() {
		return jug;
	}

	/**
	 * @param jug The jug to set.
	 */
	public void setJug(JUGMember jug) {
		this.jug = jug;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}

}
