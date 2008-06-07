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
import org.blueoxygen.cimande.role.RoleSite;
import org.blueoxygen.cimande.role.RoleSitePrivilage;
import org.blueoxygen.cimande.security.LoginFilter;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.cimande.site.Site;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class CimandeInterceptor implements Interceptor, PersistenceAware,
		SessionCredentialsAware {
	private PersistenceManager manager;
	private SessionCredentials sessCredentials;
	private Site currentSite;
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
			String siteId = (String) ServletActionContext.getRequest()
					.getSession().getAttribute(LoginFilter.LOGIN_CIMANDE_SITE);
			if (siteId != null && !"".equalsIgnoreCase(siteId)) {
				currentSite = (Site) manager.getById(Site.class, siteId);
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
					}
				}
			}
		}
		return actionInvocation.invoke();
	}

	private boolean isAuthorized(ActionInvocation actionInvocation) {
		boolean auth = false;
		List<ModuleFunction> modules = new ArrayList<ModuleFunction>();

		String mySQL = "SELECT rs FROM " + RoleSite.class.getName()
				+ " rs WHERE rs.role.id='" + currentRole.getId()
				+ "' AND rs.site.id='" + currentSite.getId() + "'";
		List<RoleSite> temp = new ArrayList<RoleSite>();
		temp = manager.getList(mySQL, null, null);
		int total_role_site = temp.size();

		if (total_role_site > 0) {
			// read all module function from role_site_privilage.
			mySQL = "SELECT rsp FROM " + RoleSitePrivilage.class.getName()
					+ " rsp WHERE rsp.roleSite.site.id = '"
					+ currentSite.getId() + "' AND rsp.roleSite.role.id = '"
					+ currentRole.getId()
					+ "' ORDER BY (rsp.moduleFunction.description)";
			List<RoleSitePrivilage> rsp = new ArrayList<RoleSitePrivilage>();
			rsp = (List<RoleSitePrivilage>) manager.getList(mySQL, null, null);
			for (RoleSitePrivilage tmp : rsp) {
				modules.addAll(getLeafPrivilage(tmp.getModuleFunction()));
			}
		} else {
			// read all module function from role_privilage
			mySQL = "SELECT rp FROM " + RolePrivilage.class.getName()
					+ " rp WHERE tmp.role.id='" + currentRole.getId()
					+ "' ORDER BY (rp.moduleFunction.description)";
			List<RolePrivilage> rp = new ArrayList<RolePrivilage>();
			rp = (List<RolePrivilage>) manager.getList(mySQL, null, null);
			for (RolePrivilage tmp : rp) {
				modules.addAll(getLeafPrivilage(tmp.getModuleFunction()));
			}
		}
		for (ModuleFunction module : modules) {
			if (descriptorCalled.equals(module.getModuleDescriptor())) {
				return true;
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
