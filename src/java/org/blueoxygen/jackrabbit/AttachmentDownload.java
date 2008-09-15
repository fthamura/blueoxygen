package org.blueoxygen.jackrabbit;

import javax.jcr.PathNotFoundException;
import javax.jcr.RepositoryException;

import org.blueoxygen.cimande.persistence.PersistenceAware;
import org.blueoxygen.cimande.persistence.PersistenceManager;
import org.blueoxygen.jackrabbit.dao.RepositoryDAO;
import org.blueoxygen.jackrabbit.dao.RepositoryDAOAware;
//import org.blueoxygen.komodo.Article;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Download attachment from repository
 * @author leo
 */
public class AttachmentDownload extends ActionSupport implements PersistenceAware ,RepositoryDAOAware {
	private PersistenceManager pm;
	private RepositoryDAO repoManager;
	private AttachedStream file;
	private String key;
	
	public String execute(){
		try {
//			Article article = (Article) pm.getById(Article.class, key);
			file = repoManager.getFile(key);
//			file.setFileName(article.getDocUploadName());
		} catch (PathNotFoundException e) {
			e.printStackTrace();
		} catch (RepositoryException e) {
			e.printStackTrace();
		} 
		return SUCCESS;
	}
	
	public void setRepositoryDAO(RepositoryDAO repositoryDAO) {
		this.repoManager = repositoryDAO;
	}

	public AttachedStream getFile() {
		return file;
	}

	public void setFile(AttachedStream file) {
		this.file = file;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String fileName) {
		this.key = fileName;
	}

	public void setPersistenceManager(PersistenceManager persistenceManager) {
		this.pm = persistenceManager;
	}

}
