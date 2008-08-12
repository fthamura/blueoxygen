/*
 * Created on Aug 4, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
package org.blueoxygen.cimande.section.actions;


import java.sql.Timestamp;


import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.section.Section;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;

 
/**
 * @author dwi miyanto [mee_andto@yahoo.com ]
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public class UpdateSection extends SectionForm implements SessionCredentialsAware{
	private SessionCredentials sess;
	private String id;

	protected Descriptor sectionDescriptor = new Descriptor();

	public String execute(){

		section = (Section) pm.getById(Section.class, getId());
		if(getCode().equalsIgnoreCase("")){
			addActionError("please input code");
			return INPUT;
		}
		if(getDescription().equalsIgnoreCase("")){
			addActionError("please input description");
			return INPUT;
		}
		sectionDescriptor = (Descriptor) pm.getById(Descriptor.class, getDescriptor_id());
		
		section.setCode(getCode());
		section.setDescription(getDescription());
		section.setUrl_section(getUrl_section());

		section.setSectionDescriptor(sectionDescriptor);
		
		logInfo = section.getLogInformation();
		logInfo.setLastUpdateBy(sess.getCurrentUser().getId());
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		logInfo.setActiveFlag(getActiveFlag());
		section.setLogInformation(logInfo);
		
		pm.save(section);
		return SUCCESS;
	}

	

	public Descriptor getSectionDescriptor() {
		return sectionDescriptor;
	}



	public void setSectionDescriptor(Descriptor sectionDescriptor) {
		this.sectionDescriptor = sectionDescriptor;
	}


	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}
