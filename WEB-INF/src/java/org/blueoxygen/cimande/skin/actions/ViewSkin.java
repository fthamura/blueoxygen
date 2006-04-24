/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 *******************************************************************************/
package org.blueoxygen.cimande.skin.actions;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.skin.Skin;

import com.opensymphony.xwork.ActionSupport;

/**
 * @author amix
 *
 */
public class ViewSkin extends ActionSupport implements PersistenceAware{
	
	protected PersistenceManager pm;
	protected Skin skin;
	
	private String id = "";
	
	public String execute(){
		
		if (!id.equalsIgnoreCase(""))
		{
			skin = (Skin) pm.getById(Skin.class, getId());
			return SUCCESS;
		}
		else
		{
			addActionError("Contact not found");
			return ERROR;
		}
	}
	
	/**
	 * @return Returns the id.
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id The id to set.
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return Returns the skin.
	 */
	public Skin getSkin() {
		return skin;
	}

	/**
	 * @param skin The skin to set.
	 */
	public void setSkin(Skin skin) {
		this.skin = skin;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}
	

}
