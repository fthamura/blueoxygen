package org.blueoxygen.jackrabbit.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;

import javax.activation.MimetypesFileTypeMap;
import javax.jcr.AccessDeniedException;
import javax.jcr.InvalidItemStateException;
import javax.jcr.ItemExistsException;
import javax.jcr.Node;
import javax.jcr.NodeIterator;
import javax.jcr.PathNotFoundException;
import javax.jcr.Property;
import javax.jcr.PropertyIterator;
import javax.jcr.PropertyType;
import javax.jcr.ReferentialIntegrityException;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.UnsupportedRepositoryOperationException;
import javax.jcr.Value;
import javax.jcr.lock.LockException;
import javax.jcr.nodetype.ConstraintViolationException;
import javax.jcr.nodetype.NoSuchNodeTypeException;
import javax.jcr.version.Version;
import javax.jcr.version.VersionException;
import javax.jcr.version.VersionHistory;
import javax.jcr.version.VersionIterator;

import org.blueoxygen.jackrabbit.AttachedStream;
import org.blueoxygen.jackrabbit.VersionEntry;
import org.springmodules.jcr.SessionFactory;

public class DefaultRepositoryDAO implements RepositoryDAO {
	private SessionFactory jcrSessionFactory;
	private Session jcrSession;
	
	public Session getJcrSession() {
		return jcrSession;
	}

	public void setJcrSession(Session jcrSession) {
		this.jcrSession = jcrSession;
	}

	public SessionFactory getJcrSessionFactory() {
		return jcrSessionFactory;
	}

	public void setJcrSessionFactory(SessionFactory jcrSessionFactory) {
		this.jcrSessionFactory = jcrSessionFactory;
	}

	/**
	 * Initialize Jackrabbit Session from Session Factory
	 * for spring init-method
	 * akan dipanggil ketika aplikasi startup
	 */
	public void init(){
		try {
			jcrSession = jcrSessionFactory.getSession();
		} catch (RepositoryException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Logout Jackrabbit Session
	 * for spring destroy-method
	 */
	public void dispose(){
		jcrSession.logout();
	}

	
	/**
     * Imports a File.
     *
     * @param parentnode Parent Repository Node
     * @param file File to be imported
     * @throws RepositoryException on repository errors, IOException on io errors
     */
    public void importFile(Node parentnode, File file, String key) throws RepositoryException, IOException {
        String mimeType = new MimetypesFileTypeMap().getContentType(file);
        if (mimeType==null) mimeType="application/octet-stream";

        Node fileNode = parentnode.addNode(key, "nt:file");
        
        Node resNode = fileNode.addNode("jcr:content", "nt:resource");
        resNode.addMixin("mix:versionable"); //set node mixin type    
        //resNode.setProperty("jcr:versionLabels", file.getName());
        resNode.setProperty("jcr:mimeType", mimeType);
        resNode.setProperty("jcr:encoding", "");
        resNode.setProperty("jcr:data", new FileInputStream(file));
        Calendar lastModified = Calendar.getInstance();
        lastModified.setTimeInMillis(file.lastModified());
        resNode.setProperty("jcr:lastModified", lastModified);
        
    }

    /**
     * Import a Folder.
     *
     * @param parentnode Parent Repository Node
     * @param directory Directory to be traversed
     * @throws RepositoryException on repository errors, IOException on io errors
     */
    public void importFolder(Node parentnode, File directory) throws RepositoryException, IOException  {
        File[] direntries = directory.listFiles();
        System.out.println(parentnode.getPath());
        for (int i=0; i<direntries.length; i++) {
            File direntry = direntries[i];
            if (direntry.isDirectory()) {
                Node childnode = parentnode.addNode(direntry.getName(),"nt:folder");
                importFolder(childnode, direntry);
            } else {
                importFile(parentnode, direntry, UUID.randomUUID().toString());
            }
        }
    }

    /**
     * Dumps the contents of the given node to standard output.
     *
     * @param node the node to be dumped
     * @throws RepositoryException on repository errors
     */
    public void dump(Node node) throws RepositoryException {
        System.out.println(node.getPath());

        PropertyIterator properties = node.getProperties();
        while (properties.hasNext()) {
            Property property = properties.nextProperty();
            System.out.print(property.getPath() + "=");
            if (property.getDefinition().isMultiple()) {
                Value[] values = property.getValues();
                for (int i = 0; i < values.length; i++) {
                    if (i > 0) {
                        System.out.println(",");
                    }
                    System.out.println(values[i].getString());
                }
            } else {
                if (property.getType()==PropertyType.BINARY) {
                    System.out.print("<binary>");
                }  else {
                    System.out.print(property.getString());
                }

            }
            System.out.println();
        }

        NodeIterator nodes = node.getNodes();
        while (nodes.hasNext()) {
            Node child = nodes.nextNode();
            dump(child);
        }
    }
	
	/**
	 * Get Root Node from Repository
	 */
    public Node getRootNode() throws RepositoryException {
		return jcrSession.getRootNode();
	}
	
    /**
     * Save Jackrabbit Session to Repository
     */
	public void save() 
	throws AccessDeniedException, ItemExistsException, ConstraintViolationException, 
	       InvalidItemStateException, VersionException, LockException, 
	       NoSuchNodeTypeException, RepositoryException {
		jcrSession.save();
	}
	
	
	public AttachedStream getFile(String key) throws PathNotFoundException, RepositoryException {
		AttachedStream af = new AttachedStream();
		
		Node content = jcrSession.getRootNode().getNode(key);
		Node resource = content.getNode("jcr:content");
		Value value = (Value) resource.getProperty("jcr:data").getValue();
		
		af.setFileName(key);
		af.setFile(value.getStream());
		af.setContentType(resource.getProperty("jcr:mimeType").getString());
		
		return af;
	}

	public void updateFile(Node node, File file) throws RepositoryException, IOException {
		
		String mimeType = new MimetypesFileTypeMap().getContentType(file);
        if (mimeType==null) mimeType="application/octet-stream";
        
        Node resNode = node.getNode("jcr:content");
        resNode.checkout();
        //resNode.setProperty("jcr:versionLabels", file.getName());
        resNode.setProperty("jcr:mimeType", mimeType);
        resNode.setProperty("jcr:encoding", "");
        resNode.setProperty("jcr:data", new FileInputStream(file));
        Calendar lastModified = Calendar.getInstance();
        lastModified.setTimeInMillis(file.lastModified());
        resNode.setProperty("jcr:lastModified", lastModified);
        System.out.println(node.getPath());
        jcrSession.save();
		resNode.checkin();
	}
	
	public void deleteFile(Node node, String key) throws VersionException, LockException, ConstraintViolationException, RepositoryException {
		Node content = node.getNode(key);
		
		NodeIterator ni = content.getNodes();
		
		while(ni.hasNext()){
				ni.nextNode().remove();
		}
		//content.removeMixin("mix:versionable");
		
		content.remove();
		node.save();
	}
	
	public ArrayList getVersionList(Node node) throws RepositoryException, IOException{
		ArrayList versionList = new ArrayList();
		Node resNode = node.getNode("jcr:content");
		
		VersionHistory versionHistory = resNode.getVersionHistory();
		VersionIterator versionIterator = versionHistory.getAllVersions();
		// for each version, output the node as it was versioned 		
		while(versionIterator.hasNext())
		{
			Version version = versionIterator.nextVersion();
			NodeIterator nodeIterator = version.getNodes();
			while(nodeIterator.hasNext())
			{
				Node versionedNode = nodeIterator.nextNode();
//				 version, name, size, create, modified, type				
				String versionLabel = version.getName();
				String fileName = version.getName();
				Date creationTime = version.getCreated().getTime();
				//Calendar modifiedTime = versionedNode.getProperty("jcr:lastModified").getDate();
				//String mimeType = versionedNode.getProperty("jcr:mimeType").getString();				
				
				VersionEntry versionEntry = new VersionEntry(versionLabel, fileName, creationTime);
				versionList.add(versionEntry);
			}
		}
		return versionList;
	}

	public void deleteAllVersion(Node node) throws VersionException, LockException, ConstraintViolationException, RepositoryException {
		
		Node resNode = node.getNode("jcr:content");
		VersionHistory versionHistory = resNode.getVersionHistory();
		//VersionIterator versionIterator = versionHistory.getAllVersions();
		String baseVersion = resNode.getBaseVersion().getName();
		
		for(VersionIterator versionIterator = versionHistory.getAllVersions(); versionIterator.hasNext();){
			Version currentVersion = versionIterator.nextVersion();
			String versionName = currentVersion.getName();
			if (!versionName.equals("jcr:rootVersion") && !versionName.equals(baseVersion)) {
		        System.out.println("MASUK");
		        versionHistory.removeVersion(versionName);		        
			}
/*			else if(versionName.equals(baseVersion)){
				
				resNode.getBaseVersion().remove();
			}
*/			
		}
	}

	public void removeVersion(Node node, String versionLabel) throws RepositoryException, ReferentialIntegrityException, AccessDeniedException,
    UnsupportedRepositoryOperationException, VersionException {
		Node resNode = node.getNode("jcr:content");
		
		VersionHistory versionHistory = resNode.getVersionHistory();
		String baseVersion = resNode.getBaseVersion().getName();
		
		if(versionLabel == "jcr:rootVersion"){			
			//versionHistory.getRootVersion().getNodes().remove();			
			NodeIterator ni = resNode.getNodes();			
			while(ni.hasNext()){
					ni.nextNode().remove();
			}			
			resNode.remove();
			node.save();			
		}		
		else if(versionLabel.equals(baseVersion)){
			
			resNode.getBaseVersion().remove();
			
		}		
		else{
			versionHistory.removeVersion(versionLabel);
		}
		resNode.save();
	}

	public void restoreVersion(Node node, String versionLabel) throws RepositoryException, ReferentialIntegrityException, AccessDeniedException, UnsupportedRepositoryOperationException, VersionException {
		Node resNode = node.getNode("jcr:content");
				
		resNode.checkout();
		resNode.restore(versionLabel, true);
		resNode.checkin();
	}
	
}
