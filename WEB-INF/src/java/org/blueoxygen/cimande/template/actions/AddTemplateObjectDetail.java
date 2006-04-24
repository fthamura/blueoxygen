/**
 * 
 */
package org.blueoxygen.cimande.template.actions;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.descriptors.Descriptor;
import org.blueoxygen.cimande.descriptors.Collection;
import org.blueoxygen.cimande.template.TemplateObjectDetail;
import org.blueoxygen.cimande.template.TemplateObject;
import org.blueoxygen.cimande.security.SessionCredentials;
import org.blueoxygen.cimande.security.SessionCredentialsAware;
import org.blueoxygen.cimande.security.User;

/**
 * @author Ikromy
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class AddTemplateObjectDetail extends TemplateObjectDetailForm implements SessionCredentialsAware{
	private SessionCredentials sess;
			
	public String execute()
	{
		TemplateObjectDetail objectDetail = new TemplateObjectDetail();
	
		if(getDescription().equalsIgnoreCase("")){
			addActionError("please input description");
			return INPUT;
		} else {
			
			
			collection = (Collection) pm.getById(Collection.class, getCollection_id());		
			descriptor = (Descriptor) pm.getById(Descriptor.class, getDescriptor_id());			
			templateObject = (TemplateObject) pm.getById(TemplateObject.class, getTemplate_object_id());
			
			objectDetail.setDescription(getDescription());
			objectDetail.setType(getType());
			objectDetail.setCollection(collection);
			objectDetail.setDescriptor(descriptor);
			objectDetail.setTemplateObject(templateObject);
							   
			LogInformation log = new LogInformation();
			User user = sess.getCurrentUser();
			
			log.setCreateBy(user.getId());
			log.setLastUpdateBy(user.getId());
					
			log.setCreateDate(new Timestamp(System.currentTimeMillis()));
			log.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
						
			objectDetail.setLogInformation(log);
			pm.save(objectDetail);
			return SUCCESS;
		}
	}
	
	public void setSessionCredentials(SessionCredentials sessionCredentials) {
		this.sess = sessionCredentials;
	}
	
}
