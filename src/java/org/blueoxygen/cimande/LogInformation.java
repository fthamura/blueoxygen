/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.blueoxygen.cimande.site.Site;




/**
 * @author Umar Khatab umar@intercitra.com
 *
 * To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class LogInformation {
	private Timestamp createDate = new Timestamp(0);
	private Timestamp lastUpdateDate = new Timestamp(0);
	private String createBy = "";
	private String lastUpdateBy = "";
	private int activeFlag;
	private Site site;
	public final static int ACTIVE = 1;
	public final static int INACTIVE = 0;
	
	/**
	 * @return Returns the createBy.
	 * @hibernate.property length="28" column="create_by"
	 */
	@Column(name="create_by")
	public String getCreateBy() {
		return createBy;
	}
	/**
	 * @param createBy The createBy to set.
	 */
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	/**
	 * @return Returns the lastUpdateBy.
	 * @hibernate.property length="28" column="update_by"
	 */
	@Column(name="update_by")
	public String getLastUpdateBy() {
		return lastUpdateBy;
	}
	/**
	 * @param lastUpdateBy The lastUpdateBy to set.
	 */
	public void setLastUpdateBy(String lastUpdateBy) {
		this.lastUpdateBy = lastUpdateBy;
	}
	/**
	 * @return Returns the createDate.
	 * @hibernate.property column="create_date"
	 */
	@Column(name="create_date")
	public Timestamp getCreateDate() {
		return createDate;
	}
	/**
	 * @param createDate The createDate to set.
	 */
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	/**
	 * @return Returns the lastUpdateDate.
	 * @hibernate.property column="update_date"
	 * 
	 */
	@Column(name="update_date")
	public Timestamp getLastUpdateDate() {
		return lastUpdateDate;
	}
	/**
	 * @param lastUpdateDate The lastUpdateDate to set.
	 */
	public void setLastUpdateDate(Timestamp lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}
	/**
	 * @hibernate.property column="active_flag"
	 */
	@Column(name="active_flag")
	public int getActiveFlag() {
		return activeFlag;
	}
	/**
	 * @param activeFlag The activeFlag to set.
	 */
	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}
	@Transient
	public boolean isActive() {
		return (this.activeFlag == ACTIVE);
	}
	@Transient	
	public boolean isInactive() {
		return (this.activeFlag == INACTIVE);
	}
	
	@ManyToOne()
	@JoinColumn(name="site_id")
	public Site getSite() {
		return site;
	}
	public void setSite(Site site) {
		this.site = site;
	}

}
