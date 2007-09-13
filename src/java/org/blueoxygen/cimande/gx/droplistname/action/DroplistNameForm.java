package org.blueoxygen.cimande.gx.droplistname.action;

import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.gx.entity.DroplistName;
import org.blueoxygen.cimande.gx.entity.DroplistValue;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author anja
 *
 */
public class DroplistNameForm extends ActionSupport implements PersistenceAware {
	protected PersistenceManager manager;
	protected List droplistnames = new ArrayList();
	protected List<DroplistValue> droplistvalues = new ArrayList<DroplistValue>();
	protected List tmChild = new ArrayList();
	protected DroplistValue droplistvalue = new DroplistValue();
	protected DroplistValue vtemp = new DroplistValue();
	protected DroplistName droplistname = new DroplistName();
	protected DroplistName temp = new DroplistName();
	private String id = "";
	private String parentId = "";
	private String report = "";
	public static final Object DROPLISTNAME = new String("DROPLISTNAME");
	public static final Object DROPLISTVALUES = new String("DROPLISTVALUES");
	
	public String execute() {
		droplistnames = manager.findAll(DroplistName.class);		
		if(!getId().equalsIgnoreCase("")){
			droplistname = (DroplistName)manager.getById(DroplistName.class, getId());	
			tmChild = droplistname.getChild(manager, getId());
			droplistvalues = (ArrayList<DroplistValue>)manager.getList("FROM "+DroplistValue.class.getName()+" as dv WHERE dv.droplistname.id='"+droplistname.getId()+"'", null, null);
			ActionContext.getContext().getSession().put(DROPLISTNAME, droplistname);
			if(droplistvalues != null){
				ActionContext.getContext().getSession().put(DROPLISTVALUES, droplistvalues);
			}
		}
		return SUCCESS;
	}
	public void setPersistenceManager(PersistenceManager persistenceManager){
		this.manager = persistenceManager;
	}
	public DroplistName getDroplistname() {
		return droplistname;
	}
	public void setDroplistname(DroplistName droplistname) {
		this.droplistname = droplistname;
	}
	public List getDroplistnames() {
		return droplistnames;
	}
	public void setDroplistnames(List droplistnames) {
		this.droplistnames = droplistnames;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getReport() {
		return report;
	}
	public void setReport(String report) {
		this.report = report;
	}
	public DroplistName getTemp() {
		return temp;
	}
	public void setTemp(DroplistName temp) {
		this.temp = temp;
	}
	public List getTmChild() {
		return tmChild;
	}
	public void setTmChild(List tmChild) {
		this.tmChild = tmChild;
	}
	public DroplistValue getDroplistvalue() {
		return droplistvalue;
	}
	public void setDroplistvalue(DroplistValue droplistvalue) {
		this.droplistvalue = droplistvalue;
	}
	public List<DroplistValue> getDroplistvalues() {
		return droplistvalues;
	}
	public void setDroplistvalues(List<DroplistValue> droplistvalues) {
		this.droplistvalues = droplistvalues;
	}
	public DroplistValue getVtemp() {
		return vtemp;
	}
	public void setVtemp(DroplistValue vtemp) {
		this.vtemp = vtemp;
	}
	
}
