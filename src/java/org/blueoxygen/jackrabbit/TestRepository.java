package org.blueoxygen.jackrabbit;

import java.io.File;
import java.io.IOException;

import javax.jcr.Node;
import javax.jcr.PathNotFoundException;
import javax.jcr.RepositoryException;

import org.blueoxygen.jackrabbit.dao.RepositoryDAO;
import org.blueoxygen.jackrabbit.dao.RepositoryDAOAware;

import com.opensymphony.xwork2.ActionSupport;

public class TestRepository extends ActionSupport implements RepositoryDAOAware {
	private RepositoryDAO repoManager;
	private AttachedStream file;
	private String fileName;
	private String contentType;
	public String execute(){
		
		try {
			Node root;
			File file = new File("/home/leo/bilde.jpeg");
			root = repoManager.getRootNode();
			Node kmdNode = root.addNode("root");
			repoManager.importFile(kmdNode, file, "");
			
			repoManager.save();
		} catch (RepositoryException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public void setRepositoryDAO(RepositoryDAO repositoryDAO) {
		this.repoManager = repositoryDAO;
	}
	
	public String attachedfile(){
		try {
			
			file = repoManager.getFile(fileName);
		} catch (PathNotFoundException e) {
			e.printStackTrace();
		} catch (RepositoryException e) {
			e.printStackTrace();
		} 
		return "getFile";
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public AttachedStream getFile() {
		return file;
	}

	public void setFile(AttachedStream file) {
		this.file = file;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
}
