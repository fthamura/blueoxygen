package org.blueoxygen.jackrabbit.dao;

import java.io.File;
import java.io.IOException;

import javax.jcr.AccessDeniedException;
import javax.jcr.InvalidItemStateException;
import javax.jcr.ItemExistsException;
import javax.jcr.Node;
import javax.jcr.PathNotFoundException;
import javax.jcr.ReferentialIntegrityException;
import javax.jcr.RepositoryException;
import javax.jcr.UnsupportedRepositoryOperationException;
import javax.jcr.lock.LockException;
import javax.jcr.nodetype.ConstraintViolationException;
import javax.jcr.nodetype.NoSuchNodeTypeException;
import javax.jcr.version.VersionException;

import java.util.ArrayList;

import org.blueoxygen.jackrabbit.AttachedStream;

public interface RepositoryDAO {
	
	public void importFile(Node parentnode, File file, String key) throws RepositoryException, IOException; 
	
	public void updateFile(Node node, File file) throws RepositoryException, IOException;
	
	public void deleteFile(Node node, String key) 
	throws VersionException, LockException, ConstraintViolationException, RepositoryException;
	
	public void importFolder(Node parentnode, File directory) throws RepositoryException, IOException;
	
	public AttachedStream getFile(String key) throws PathNotFoundException, RepositoryException;
	
	public void dump(Node node) throws RepositoryException;
	
	public Node getRootNode() throws RepositoryException;
	
	public void save() 
	throws AccessDeniedException, ItemExistsException, ConstraintViolationException, 
           InvalidItemStateException, VersionException, LockException, 
           NoSuchNodeTypeException, RepositoryException;	
	
	public ArrayList getVersionList(Node node) throws RepositoryException, IOException;
	
	public void deleteAllVersion(Node node) throws VersionException, LockException, ConstraintViolationException, RepositoryException;
	
	public void removeVersion(Node node, String versionLabel) throws RepositoryException, ReferentialIntegrityException, AccessDeniedException,
    UnsupportedRepositoryOperationException, VersionException;
	
	public void restoreVersion(Node node, String versionLabel) throws RepositoryException, ReferentialIntegrityException, AccessDeniedException, 
	UnsupportedRepositoryOperationException, VersionException;
}	
