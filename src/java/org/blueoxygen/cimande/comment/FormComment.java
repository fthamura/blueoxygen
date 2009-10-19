package org.blueoxygen.cimande.comment;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.util.URLBean;
import org.blueoxygen.cimande.CimandeAction;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.descriptors.DescriptorModule;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;
import org.blueoxygen.cimande.persistence.PersistenceException;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.cimande.persistence.hibernate.HibernateSessionFactory;
import org.blueoxygen.util.PropertyLooker;
import org.hibernate.HibernateException;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.classic.Session;

import com.opensymphony.xwork2.ActionInvocation;

public class FormComment extends CimandeAction{
	private HttpServletRequest request;
	private ServletActionContext servletActionContext;
	private PersistenceManager pm;
	private CommentManager comment = new CommentManager();
	private List<CommentManager> comments = new ArrayList<CommentManager>();
	private Descriptor descriptor;
	private List<Descriptor> descriptors = new ArrayList<Descriptor>();
	private DescriptorModule descriptorModule;
	private List<DescriptorModule> descriptorModules = new ArrayList<DescriptorModule>();
	private String idContent;
	private String txtcomment;
	private String name;
	private String tmpurl;
	private String currDescriptor;
	private GxDroplistValue categoryComment;
	private List<GxDroplistValue> categoryComments = new ArrayList<GxDroplistValue>();
	private String idCategory = "ff808181246de54c01246dea6c850001";
	public String execute(){
		if(getComment().getId()!=null && !"".equalsIgnoreCase(getComment().getId())){
			setComment((CommentManager) manager.getById(CommentManager.class, getComment().getId()));
			
		}
		setComments(manager.getList("SELECT c FROM "+CommentManager.class.getName()+" c WHERE c.idContent= '"+getIdContent()+"' ORDER BY c.logInformation.createDate desc", null, null));
		setCategoryComments(manager.getList("SELECT c FROM "+GxDroplistValue.class.getName()+" c WHERE c.name.id= '"+getIdCategory()+"'", null, null));
//		System.out.println(getServletActionContext().getRequest().getRequestURL());
		URLBean bean = new URLBean();
		bean.setRequest(ServletActionContext.getRequest());
		bean.setResponse(ServletActionContext.getResponse());
		String target = ServletActionContext.getResponse().encodeRedirectURL(bean.toString());
		setTmpurl(PropertyLooker.get("cimande.host")+""+target);
		
		String descriptorCandidate[] = target.split("/");
		String descriptorName = descriptorCandidate[3];
		descriptor = (Descriptor) manager.getByUniqueField(Descriptor.class, getCurrDescriptor(), "name");
		
		if(descriptor.getId()!=null && !"".equals(descriptor.getId())){
			setDescriptorModules(manager.getList("SELECT dm FROM "+DescriptorModule.class.getName()+" dm WHERE dm.descriptor.id= '"+descriptor.getId()+"'", null, null));
			System.out.println("Nama "+getDescriptorModules().size());	
		}
		
		
		
		 
		return SUCCESS;
	}
	

	public String getIdCategory() {
		return idCategory;
	}


	public void setIdCategory(String idCategory) {
		this.idCategory = idCategory;
	}


	public GxDroplistValue getCategoryComment() {
		return categoryComment;
	}


	public void setCategoryComment(GxDroplistValue categoryComment) {
		this.categoryComment = categoryComment;
	}


	public List<GxDroplistValue> getCategoryComments() {
		return categoryComments;
	}


	public void setCategoryComments(List<GxDroplistValue> categoryComments) {
		this.categoryComments = categoryComments;
	}


	public DescriptorModule getDescriptorModule() {
		return descriptorModule;
	}


	public void setDescriptorModule(DescriptorModule descriptorModule) {
		this.descriptorModule = descriptorModule;
	}


	public List<DescriptorModule> getDescriptorModules() {
		return descriptorModules;
	}


	public void setDescriptorModules(List<DescriptorModule> descriptorModules) {
		this.descriptorModules = descriptorModules;
	}


	public String getCurrDescriptor() {
		return currDescriptor;
	}

	public void setCurrDescriptor(String currDescriptor) {
		this.currDescriptor = currDescriptor;
	}

	public Descriptor getDescriptor() {
		return descriptor;
	}

	public void setDescriptor(Descriptor descriptor) {
		this.descriptor = descriptor;
	}

	public List<Descriptor> getDescriptors() {
		return descriptors;
	}

	public void setDescriptors(List<Descriptor> descriptors) {
		this.descriptors = descriptors;
	}

	public String getTmpurl() {
		return tmpurl;
	}

	public void setTmpurl(String tmpurl) {
		this.tmpurl = tmpurl;
	}

	public ServletActionContext getServletActionContext() {
		return servletActionContext;
	}

	public void setServletActionContext(ServletActionContext servletActionContext) {
		this.servletActionContext = servletActionContext;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTxtcomment() {
		return txtcomment;
	}

	public void setTxtcomment(String txtcomment) {
		this.txtcomment = txtcomment;
	}

	public String getIdContent() {
		return idContent;
	}

	public void setIdContent(String idContent) {
		this.idContent = idContent;
	}

	public CommentManager getComment() {
		return comment;
	}

	public void setComment(CommentManager comment) {
		this.comment = comment;
	}

	public List<CommentManager> getComments() {
		return comments;
	}

	public void setComments(List<CommentManager> comments) {
		this.comments = comments;
	}
}
