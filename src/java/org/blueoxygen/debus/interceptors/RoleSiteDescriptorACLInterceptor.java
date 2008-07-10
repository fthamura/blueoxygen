package org.blueoxygen.debus.interceptors;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.LoginFilter;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.debus.entity.RoleDescriptorACLAccess;
import org.blueoxygen.debus.entity.RoleSiteDescriptorACLAccess;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class RoleSiteDescriptorACLInterceptor implements Interceptor,
		PersistenceAware, SessionCredentialsAware {

	private PersistenceManager manager;
	private SessionCredentials sessionCredentials;

	@Override
	public void destroy() {

	}

	@Override
	public void init() {

	}

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		String namespace = actionInvocation.getProxy().getNamespace();
		String actionName = actionInvocation.getProxy().getActionName();
		String descriptorCandidate[] = namespace.split("/");
		if ("module".equalsIgnoreCase(descriptorCandidate[1])) {
			String descriptorName = descriptorCandidate[2];
			List<RoleDescriptorACLAccess> rdAccesses = new ArrayList<RoleDescriptorACLAccess>();
			rdAccesses = manager.getList("SELECT rsda FROM "
					+ RoleSiteDescriptorACLAccess.class.getName()
					+ " rsda WHERE rsda.rsDescriptor.roleSite.role.id='"
					+ getCurrentUser().getRole().getId()
					+ " AND rsda.rsDescriptor.roleSite.site.id='"
					+ ActionContext.getContext().getSession().get(
							LoginFilter.LOGIN_CIMANDE_SITE)
					+ "' AND rsda.rsDescriptor.descriptor.name='"
					+ descriptorName + "'", null, null);
			if (!rdAccesses.isEmpty()) {
				for (RoleDescriptorACLAccess rda : rdAccesses) {
					if (actionName.equalsIgnoreCase(rda.getAcl().getValue())) {
						return actionInvocation.invoke();
					}
				}
				return "notallowed";
			}
		}
		return actionInvocation.invoke();
	}

	private User getCurrentUser() {
		return sessionCredentials.getCurrentUser();
	}

	@Override
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	@Override
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

}
