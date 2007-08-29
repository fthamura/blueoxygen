/**
 * 
 */
package org.blueoxygen.cimande.template.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.descriptors.Collection;
import org.blueoxygen.cimande.template.TemplateObjectDetail;
import org.blueoxygen.cimande.template.TemplateObject;
/**
 * @author Ikromy
 *
 */
public class UpdateTemplateObjectDetail extends TemplateObjectDetailForm implements SessionCredentialsAware {

	private SessionCredentials sessCredentials;
	private String id;
	
	public String execute() {
		String result = super.execute();
		
		objectDetail = (TemplateObjectDetail) pm.getById(TemplateObjectDetail.class, getId());
		
		if (getDescription().equalsIgnoreCase("")) {
			addActionError("Description can't be empty.");
			return ERROR;
		}
		if (hasErrors()) {
			return INPUT;
		} else {
			
			descriptor = (Descriptor) pm.getById(Descriptor.class, getDescriptor_id());
			collection = (Collection) pm.getById(Collection.class, getCollection_id());
			templateObject = (TemplateObject) pm.getById(TemplateObject.class, getTemplate_object_id());
			
			objectDetail.setDescription(getDescription());
			objectDetail.setType(getType());
			objectDetail.setDescriptor(descriptor);
			objectDetail.setCollection(collection);
			objectDetail.setTemplateObject(templateObject);
			
			logInfo = objectDetail.getLogInformation();
			logInfo.setLastUpdateBy(sessCredentials.getCurrentUser().getId());
			logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));	
			objectDetail.setLogInformation(logInfo);
			
			pm.save(objectDetail);
			
			return SUCCESS;
		}
	}
		public void setSessionCredentials(SessionCredentials sessionCredentials) {
			this.sessCredentials = sessionCredentials;
		}
		/**
		 * @return Returns the id.
		 */
		public String getId() {
			return id;
		}
		/**
		 * @param id The id to set.
		 */
		public void setId(String id) {
			this.id = id;
		}

}
