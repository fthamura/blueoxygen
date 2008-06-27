package org.blueoxygen.cimande.interceptors;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.role.RolePrivilage;
import org.blueoxygen.cimande.role.RoleSitePrivilage;
import org.blueoxygen.cimande.security.LoginFilter;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class CimandeInterceptor implements Interceptor, PersistenceAware,
		SessionCredentialsAware {
	private PersistenceManager manager;
	private SessionCredentials sessCredentials;
	private String siteId;
	private Role currentRole;
	private User currentUser;
	private Descriptor descriptorCalled;

	@Override
	public void destroy() {

	}

	@Override
	public void init() {

	}

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		if (sessCredentials.getCurrentUser() != null) {
			// init currentSite
			siteId = (String) ServletActionContext.getRequest().getSession()
					.getAttribute(LoginFilter.LOGIN_CIMANDE_SITE);
			// init currentUser
			currentUser = sessCredentials.getCurrentUser();
			currentRole = currentUser.getRole();

			// init descriptorCalled
			String namespace = actionInvocation.getProxy().getNamespace();
			String descriptorCandidate[] = namespace.split("/");
			if ("module".equalsIgnoreCase(descriptorCandidate[1])) {
				String descriptorName = descriptorCandidate[2];
				descriptorCalled = (Descriptor) manager.getByUniqueField(
						Descriptor.class, descriptorName, "name");
				if (descriptorCalled != null) {
					if (!isAuthorized(actionInvocation)) {
						return "notallowed";
					}
				} else {
					return "notallowed";
				}
			}
		}
		return actionInvocation.invoke();
	}

	private boolean isAuthorized(ActionInvocation actionInvocation) {
		List<ModuleFunction> modules = new ArrayList<ModuleFunction>();

		String mySQL;
		if (siteId != null && !"".equalsIgnoreCase(siteId)) {
			// read all module function from role_site_privilage.
			mySQL = "SELECT rsp FROM " + RoleSitePrivilage.class.getName()
					+ " rsp WHERE rsp.roleSite.site.id = '" + siteId
					+ "' AND rsp.roleSite.role.id = '" + currentRole.getId()
					+ "' ORDER BY (rsp.moduleFunction.description)";
			List<RoleSitePrivilage> rsp = new ArrayList<RoleSitePrivilage>();
			rsp = (List<RoleSitePrivilage>) manager.getList(mySQL, null, null);
			for (RoleSitePrivilage tmp : rsp) {
				if (checkLeafDescriptor(tmp.getModuleFunction())) {
					return true;
				}
			}
		} else {
			// read all module function from role_privilage
			mySQL = "SELECT rp FROM " + RolePrivilage.class.getName()
					+ " rp WHERE tmp.role.id='" + currentRole.getId()
					+ "' ORDER BY (rp.moduleFunction.description)";
			List<RolePrivilage> rp = new ArrayList<RolePrivilage>();
			rp = (List<RolePrivilage>) manager.getList(mySQL, null, null);
			for (RolePrivilage tmp : rp) {
				if (checkLeafDescriptor(tmp.getModuleFunction())) {
					return true;
				}
			}
		}
		return false;
	}

	private boolean checkLeafDescriptor(ModuleFunction parent) {
		for (ModuleFunction mf : parent.getModuleFunctions()) {
			if (mf.getModuleFunctions().size() <= 0) {
				if (descriptorCalled.equals(mf.getModuleDescriptor())) {
					return true;
				}
			} else {
				if (checkLeafDescriptor(mf)) {
					return true;
				}
			}
		}
		return false;
	}

	private List<ModuleFunction> getLeafPrivilage(ModuleFunction parent) {
		List<ModuleFunction> mfs = new ArrayList<ModuleFunction>();
		for (ModuleFunction mf : parent.getModuleFunctions()) {
			if (mf.getModuleFunctions().size() <= 0) {
				mfs.add(mf);
			} else {
				mfs.addAll(getLeafPrivilage(mf));
			}
		}
		return mfs;
	}

	@Override
	public void setPersistenceManager(PersistenceManager arg0) {
		this.manager = arg0;
	}

	@Override
	public void setSessionCredentials(SessionCredentials arg0) {
		this.sessCredentials = arg0;
	}

}
