package org.blueoxygen.debus.interceptors;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxWindowRoleAccess;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.debus.entity.RoleDescriptorACLAccess;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class WindowRoleInterceptor implements Interceptor,
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
		if ("module".equalsIgnoreCase(descriptorCandidate[1])) {
			String descriptorName = descriptorCandidate[2];
			List<GxWindowRoleAccess> rdAccesses = new ArrayList<GxWindowRoleAccess>();
			rdAccesses = manager.getList("SELECT rda FROM "
					+ GxWindowRoleAccess.class.getName()
					+ " wr WHERE rda.windowRole.role.id='"
					+ getCurrentUser().getRole().getId()
					+ "' AND wr.windowRole.window.name='"
					+ descriptorName + "'", null, null);
			if (!rdAccesses.isEmpty()) {
				for (GxWindowRoleAccess rda : rdAccesses) {
					if (actionName.equalsIgnoreCase(rda.getAccessName().getValue())) {
						return actionInvocation.invoke();
					}
				}
				return "notallowed";
			}
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
