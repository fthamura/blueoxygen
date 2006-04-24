/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.category.actions;

import java.io.File;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;

import org.blueoxygen.cimande.category.Category;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

import com.opensymphony.webwork.ServletActionContext;
import com.opensymphony.webwork.dispatcher.multipart.MultiPartRequestWrapper;


/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AddCategory extends CategoryForm implements SessionCredentialsAware{
	private SessionCredentials sess;
	private String id="";
	protected Descriptor categoryDescriptor = new Descriptor();
	private String descriptor_id="";
	private String iparentcode="";
	protected Category parentCategory;
	
	private String inputValue;
	private String contentType;
	private String fileName;
	private File file;
	
	public String execute()
	{
		
		MultiPartRequestWrapper multiWrapper = (MultiPartRequestWrapper) ServletActionContext.getRequest();
		if (multiWrapper.hasErrors()) {
		  Collection errors = multiWrapper.getErrors();
		  Iterator i = errors.iterator();
		  while (i.hasNext()) {
				addActionError((String) i.next());
		  }
		return ERROR;
		}
		
		Enumeration e = multiWrapper.getFileNames();

		while (e.hasMoreElements()) {
		   // get the value of this input tag
		   inputValue = (String) e.nextElement();
	
		   // get the content type
		   contentType = multiWrapper.getContentType(inputValue);
	
		   // get the name of the file from the input tag
		   fileName = multiWrapper.getFilesystemName(inputValue);
	
		   // Get a File object for the uploaded File
		   file = multiWrapper.getFile(inputValue);
		
		   // If it's null the upload failed
		   if (file == null) {
			  addActionError("Error uploading: " + multiWrapper.getFilesystemName(inputValue));
		   }
	
		   // Do additional processing/logging...
		}
		
		if(getCode().equalsIgnoreCase("")){
			addActionError("please input code");
			return INPUT;
		}
		
		if(getDescription().equalsIgnoreCase("")){
			addActionError("please input description");
			return INPUT;
		}
		
		

				category = new Category();
				category.setCode(getCode());
				category.setUrl_category_image(fileName);
				category.setDescription(getDescription());

				if(!getDescriptor_id().equalsIgnoreCase("")){
					categoryDescriptor = (Descriptor) pm.getById(Descriptor.class, getDescriptor_id());
					category.setCategoryDescriptor(categoryDescriptor);
				}
				if(!getIparentcode().equalsIgnoreCase("")){
					parentCategory = (Category) pm.getById(Category.class, getIparentcode());
					category.setParentCategory(parentCategory);
				}		
				
		   
		logInfo = new LogInformation();
		logInfo.setCreateBy(sess.getCurrentUser().getId());
		logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(getActiveFlag());
		category.setLogInformation(logInfo);
		
		pm.save(category);
		iparentcode = category.getId(); 
		return SUCCESS;
	}
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
		
	}
	public Category getParentCategory() {
		return parentCategory;
	}
	public void setParentCategory(Category cat) {
		this.parentCategory = cat;
	}
	public Descriptor getCategoryDescriptor() {
		return categoryDescriptor;
	}
	public void setCategoryDescriptor(Descriptor categoryDescriptor) {
		this.categoryDescriptor = categoryDescriptor;
	}
	public String getDescriptor_id() {
		return descriptor_id;
	}
	public void setDescriptor_id(String descriptor_id) {
		this.descriptor_id = descriptor_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIparentcode() {
		return iparentcode;
	}
	public void setIparentcode(String iparentcode) {
		this.iparentcode = iparentcode;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getInputValue() {
		return inputValue;
	}
	public void setInputValue(String inputValue) {
		this.inputValue = inputValue;
	}

	
}
