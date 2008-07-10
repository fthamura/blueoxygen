package org.blueoxygen.debus.actions.sitedescriptor;

import org.blueoxygen.debus.entity.SiteDescriptorACLAccess;

public class SearchSiteDescriptorACL extends SiteDescriptorACLForm {
	private String orderBy = "siteDescriptor.site.name";

	public String execute() {
		StringBuilder query = new StringBuilder("SELECT sda FROM "
				+ SiteDescriptorACLAccess.class.getName() + " sda ");
		boolean whereWord = false;
		if (getSite().getId() != null
				&& !"".equalsIgnoreCase(getSite().getId())) {
			query.append(" WHERE sda.siteDescriptor.site.id='"
					+ getSite().getId() + "' ");
			whereWord = true;
		}
		if (getDescriptor().getId() != null
				&& !"".equalsIgnoreCase(getDescriptor().getId())) {
			query.append(whereWord ? "AND " : "WHERE ");
			query.append("sda.siteDescriptor.descriptor.id='"
					+ getDescriptor().getId() + "' ");
			whereWord = true;
		}
		query.append("ORDER BY sda."+getOrderBy()+"");
		setSdAccesses(manager.getList(query.toString(), null, null));
		return SUCCESS;
	}

	public String getOrderBy() {
		return orderBy ;
	}
	
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
}
