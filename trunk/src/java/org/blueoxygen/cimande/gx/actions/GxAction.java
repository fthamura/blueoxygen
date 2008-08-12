package org.blueoxygen.cimande.gx.actions;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.gx.entity.GxTab;
import org.blueoxygen.cimande.gx.entity.GxWindow;
import org.blueoxygen.cimande.gx.entity.GxWindowRole;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.role.Role;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GxAction extends ActionSupport implements PersistenceAware, SessionCredentialsAware {
	protected PersistenceManager manager;
	protected SessionCredentials sessionCredentials;
	private GxWindow window = new GxWindow();
	private GxTab tab = new GxTab();
	
	public static final String READ_ACCESS   = "ff80808115f0cf5a0115f0d2732b0003";
	public static final String CREATE_ACCESS = "ff80808115f0cf5a0115f0d3125c0004";
	public static final String UPDATE_ACCESS = "ff80808115f0cf5a0115f0d3629b0005";
	public static final String DELETE_ACCESS = "ff80808115f0cf5a0115f0d3a7af0006";
	
	public static final String NOT_ALLOWED = "access";
	
	public String execute(){
		return SUCCESS;
	}
	
	protected String getActionName(){
		return ActionContext.getContext().get(ActionContext.ACTION_NAME).toString();
	}
	
	protected boolean getAccess(String access){
		Role role = sessionCredentials.getCurrentUser().getRole();
		List<GxWindowRole> wrs = (ArrayList<GxWindowRole>)manager.getList("FROM " + GxWindowRole.class.getName() + " wr " +
				"WHERE wr.window.id='" + getWindow().getId() + "' AND " +
						"wr.role.id='"+ role.getId() + "'", null, null);
		GxDroplistValue accessRole =  (GxDroplistValue) manager.getById(GxDroplistValue.class, access);
		for(GxWindowRole wr : wrs){
			if(wr.getAccess().contains(accessRole)){
				return true;
			}
		}
		return false;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public GxWindow getWindow() {
		return window;
	}

	public void setWindow(GxWindow window) {
		this.window = window;
	}

	public GxTab getTab() {
		return tab;
	}

	public void setTab(GxTab tab) {
		this.tab = tab;
	}

	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sessionCredentials = sessionCredentials;
	}

}
