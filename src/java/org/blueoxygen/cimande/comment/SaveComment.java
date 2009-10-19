package org.blueoxygen.cimande.comment;

import java.sql.Timestamp;

import org.blueoxygen.cimande.LogInformation;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;

public class SaveComment extends FormComment{
	public String execute(){
		CommentManager comment;
		LogInformation logInfo;
		if(getComment().getId()==null || "".equalsIgnoreCase(getComment().getId())){
			comment = new CommentManager();
			logInfo = new LogInformation();
			logInfo.setCreateBy(sessionCredentials.getCurrentUser().getId());
			logInfo.setCreateDate(new Timestamp(System.currentTimeMillis()));
		}else{
			comment = (CommentManager) manager.getById(CommentManager.class, getComment().getId());
			logInfo = comment.getLogInformation();
		}
		setCategoryComment((GxDroplistValue) manager.getById(GxDroplistValue.class, getCategoryComment().getId()));
		logInfo.setActiveFlag(1);
		logInfo.setLastUpdateBy(sessionCredentials.getCurrentUser().getId());
		logInfo.setLastUpdateDate(new Timestamp(System.currentTimeMillis()));
		comment.setName(getName());
		comment.setIdContent(getIdContent());
		comment.setText_comment(getTxtcomment());
		comment.setLogInformation(logInfo);
		comment.setCategoryComment(getCategoryComment());
		manager.save(comment);
		setComment(comment);
		setIdContent(getIdContent());
		
		
		return SUCCESS;
	}

}
