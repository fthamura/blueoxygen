/*
 * Created on Aug 2, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.blueoxygen.cimande.section.actions;

import java.io.File;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.multipart.MultiPartRequestWrapper;
import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.section.Section;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;


/**
 * @author dwi miyanto [mee_andto@yahoo.com]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AddSection extends SectionForm implements SessionCredentialsAware{
	private SessionCredentials sess;
	private String id="";
	protected Descriptor sectionDescriptor = new Descriptor();
	private String descriptor_id="";

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
//		Enumeration e
		String[] es = multiWrapper.getFileNames("file");

//		while (e.hasMoreElements()) {
		for(String e : es){
			// get the value of this input tag
			inputValue = (String) e; //.nextElement();

			// get the content type
			contentType = multiWrapper.getContentTypes(inputValue)[0];

			// get the name of the file from the input tag
			fileName = multiWrapper.getFileSystemNames(inputValue)[0];

			// Get a File object for the uploaded File
			file = multiWrapper.getFiles(inputValue)[0];

			// If it's null the upload failed
			if (file == null) {
				addActionError("Error uploading: " + fileName);
			}

			// Do additional processing/logging...
		}	
		sectionDescriptor = (Descriptor) pm.getById(Descriptor.class, getDescriptor_id());

		if(getCode().equalsIgnoreCase("")){
			addActionError("please input code");
			return INPUT;
		}

		if(getDescription().equalsIgnoreCase("")){
			addActionError("please input description");
			return INPUT;
		}

		section = new Section();
		section.setCode(getCode());
		section.setUrl_section(fileName);
		section.setDescription(getDescription());

		section.setSectionDescriptor(sectionDescriptor);


		logInfo = new LogInformation();
		logInfo.setCreateBy(sess.getCurrentUser().getId());
		logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(getActiveFlag());
		section.setLogInformation(logInfo);

		pm.save(section);
		return SUCCESS;
	}
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;

	}
	public Descriptor getSectionDescriptor() {
		return sectionDescriptor;
	}
	public void setSectionDescriptor(Descriptor sectionDescriptor) {
		this.sectionDescriptor = sectionDescriptor;
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
