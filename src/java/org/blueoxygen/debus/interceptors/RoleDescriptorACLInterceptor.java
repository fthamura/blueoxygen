package org.blueoxygen.debus.interceptors;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.debus.entity.RoleDescriptorACLAccess;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class RoleDescriptorACLInterceptor implements Interceptor,
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
		System.out.println(actionName);
		String descriptorCandidate[] = namespace.split("/");
		if(descriptorCandidate.length != 0){
		if ("module".equalsIgnoreCase(descriptorCandidate[1])) {
			String descriptorName = descriptorCandidate[2];
			List<RoleDescriptorACLAccess> rdAccesses = new ArrayList<RoleDescriptorACLAccess>();
			rdAccesses = manager.getList("SELECT rda FROM "
					+ RoleDescriptorACLAccess.class.getName()
					+ " rda WHERE rda.roleDescriptor.role.id='"
					+ getCurrentUser().getRole().getId()
					+ "' AND rda.roleDescriptor.descriptor.name='"
					+ descriptorName + "'", null, null);
			if (!rdAccesses.isEmpty()) {
//				for (RoleDescriptorACLAccess rda : rdAccesses) {
//					if (actionName.equalsIgnoreCase(rda.getAcl().getValue())) {
//						return actionInvocation.invoke();
//					}
//				}
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
