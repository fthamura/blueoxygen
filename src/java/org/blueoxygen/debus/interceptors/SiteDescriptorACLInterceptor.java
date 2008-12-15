package org.blueoxygen.debus.interceptors;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.LoginFilter;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.debus.entity.SiteDescriptorACLAccess;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class SiteDescriptorACLInterceptor implements Interceptor,
		PersistenceAware, SessionCredentialsAware {

	private PersistenceManager manager;
	private SessionCredentials sessionCredential;

	public void destroy() {
	}

	public void init() {
	}

	public String intercept(ActionInvocation actionInvocation) throws Exception {
		String namespace = actionInvocation.getProxy().getNamespace();
		String actionName = actionInvocation.getProxy().getActionName();
		String descriptorCandidate[] = namespace.split("/");
		String siteId = (String) ActionContext.getContext().getSession().get(
				LoginFilter.LOGIN_CIMANDE_SITE);
		if(descriptorCandidate.length != 0){
		if ("module".equalsIgnoreCase(descriptorCandidate[1])) {
			String descriptorName = descriptorCandidate[2];
			List<SiteDescriptorACLAccess> sdAccesses = new ArrayList<SiteDescriptorACLAccess>();
			sdAccesses = manager.getList("SELECT sda FROM "
					+ SiteDescriptorACLAccess.class.getName()
					+ " sda WHERE sda.siteDescriptor.site.id='" + siteId
					+ "' AND sda.siteDescriptor.descriptor.name='"
					+ descriptorName + "'", null, null);
			if (!sdAccesses.isEmpty()) {
				for (SiteDescriptorACLAccess sda : sdAccesses) {
					if (actionName.equalsIgnoreCase(sda.getAcl().getValue())) {
						return actionInvocation.invoke();
					}
				}
				return "notallowed";
			}
		}
		}else{
			
		}
		return actionInvocation.invoke();
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredential = sessionCredentials;
	}

	private User getCurrentUser() {
		return sessionCredential.getCurrentUser();
	}
}
