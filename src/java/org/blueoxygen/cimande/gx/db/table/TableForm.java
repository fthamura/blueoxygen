package org.blueoxygen.cimande.gx.db.table;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.gx.entity.GxTable;
import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.security.User;

import com.opensymphony.xwork2.ActionSupport;

public class TableForm extends CimandeAction implements PersistenceAware {
	protected PersistenceManager manager;
	private List<GxTable> tables = new ArrayList<GxTable>();
	private GxTable table = new GxTable();
	private String report = "";
	private User user = new User();
	private String workType="";
	
	public String execute(){
		user = (User) manager.getById(User.class, getCurrentUser().getId());
		if(user.getWorkspace_type().equalsIgnoreCase("flat")){
			workType = "flat";
		}else{
			workType = "";
		}
		if(getTable().getId() != null && !"".equalsIgnoreCase(getTable().getId())){
			setTable((GxTable) manager.getById(GxTable.class, getTable().getId()));
			getTable().getColumns();
		}
		return SUCCESS;
	}
	
	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.manager = persistenceManager;
	}

	public List<GxTable> getTables() {
		return tables;
	}

	public void setTables(List<GxTable> tables) {
		this.tables = tables;
	}

	public GxTable getTable() {
		return table;
	}

	public void setTable(GxTable table) {
		this.table = table;
	}

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getWorkType() {
		return workType;
	}

	public void setWorkType(String workType) {
		this.workType = workType;
	}
	

}
