package org.blueoxygen.cimande.site.actions;

import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.site.Site;

import com.opensymphony.xwork2.ActionSupport;

public class ListSite extends ActionSupport implements PersistenceAware {
	private PersistenceManager persistenceManager;

	private List<Site> sites;
	private String orderBy = "name";
	private String direction = "asc";

	public String execute() throws Exception {
		sites = persistenceManager.findAllSortedDirected(Site.class,
				getOrderBy(), getDirection());
		return SUCCESS;
	}

	/**
	 * @return Returns the direction.
	 */
	public String getDirection() {
		return direction;
	}

	/**
	 * @param direction
	 *            The direction to set.
	 */
	public void setDirection(String direction) {
		this.direction = direction;
	}

	/**
	 * @return Returns the orderBy.
	 */
	public String getOrderBy() {
		return orderBy;
	}

	/**
	 * @param orderBy
	 *            The orderBy to set.
	 */
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	/**
	 * @param persistenceManager
	 *            The persistenceManager to set.
	 */
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.persistenceManager = persistenceManager;
	}

	public List<Site> getSites() {
		return sites;
	}

	public void setSites(List<Site> sites) {
		this.sites = sites;
	}

}
