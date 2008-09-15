package org.blueoxygen.jackrabbit;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.Hashtable;

import javax.jcr.Node;
import javax.jcr.NodeIterator;
import javax.jcr.Property;
import javax.jcr.PropertyIterator;
import javax.jcr.PropertyType;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;
import javax.jcr.Value;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import org.apache.jackrabbit.core.jndi.RegistryHelper;

import sun.net.www.MimeTable;

public class RepositoryImport {
    /**
     * Run the Filesystem Import example.
     *
     * @param args command line arguments
     */
    public static void main(String[] args) {
        try {
            Repository repository = getRepository();
            SimpleCredentials creds = new SimpleCredentials("username", "password".toCharArray());
            Session session = repository.login(creds);
            Node root = session.getRootNode();


            File startingpoint=new File("/home/leo/bilde2.jpeg");
            importFolder (root.addNode(startingpoint.getName(), "nt:folder"), startingpoint);
            session.save();
            dump(root.getNode(startingpoint.getName()));
            

        } catch (Exception e) {
            System.err.println(e);
        }
    }

    /**
     * Creates a Repository instance to be used by the example class.
     *
     * @return repository instance
     * @throws NamingException 
     * @throws RepositoryException 
     * @throws Exception on errors
     */
    public static Repository getRepository() throws NamingException, RepositoryException {
        String configFile = "/home/leo/Desktop/hdt01/workspace/repotest/repository.xml";
        String repHomeDir = "/home/leo/Desktop/hdt01/workspace/repotest";

        Hashtable env = new Hashtable();
        env.put(Context.INITIAL_CONTEXT_FACTORY,
                "org.apache.jackrabbit.core.jndi.provider.DummyInitialContextFactory");
        env.put(Context.PROVIDER_URL, "localhost");
        InitialContext ctx = new InitialContext(env);

        RegistryHelper.registerRepository(ctx, "repo", configFile, repHomeDir, true);
        return (Repository) ctx.lookup("repo");
    }

    /**
     * Imports a File.
     *
     * @param parentnode Parent Repository Node
     * @param file File to be imported
     * @throws RepositoryException on repository errors, IOException on io errors
     */

    public static void importFile(Node parentnode, File file) throws RepositoryException, IOException {

        MimeTable mt = MimeTable.getDefaultTable();
        String mimeType = mt.getContentTypeFor(file.getName());
        if (mimeType==null) mimeType="application/octet-stream";

        Node fileNode = parentnode.addNode(file.getName(), "nt:file");
        Node resNode = fileNode.addNode("jcr:content", "nt:resource");
        resNode.setProperty("jcr:mimeType", mimeType);
        resNode.setProperty("jcr:encoding", "");
        resNode.setProperty("jcr:data", new FileInputStream(file));
        Calendar lastModified = Calendar.getInstance();
        lastModified.setTimeInMillis(file.lastModified());
        resNode.setProperty("jcr:lastModified", lastModified);
        System.out.println(fileNode.getPath());
   }


    /**
     * Import a Folder.
     *
     * @param parentnode Parent Repository Node
     * @param directory Directory to be traversed
     * @throws RepositoryException on repository errors, IOException on io errors
     */

    private static void importFolder(Node parentnode, File directory) throws RepositoryException, IOException  {
        File[] direntries = directory.listFiles();
        System.out.println(parentnode.getPath());
        for (int i=0; i<direntries.length; i++) {
            File direntry = direntries[i];
            if (direntry.isDirectory()) {
                Node childnode = parentnode.addNode(direntry.getName(),"nt:folder");
                importFolder(childnode, direntry);
            } else {
                importFile(parentnode, direntry);
            }
        }
    }

    /**
     * Dumps the contents of the given node to standard output.
     *
     * @param node the node to be dumped
     * @throws RepositoryException on repository errors
     */
    public static void dump(Node node) throws RepositoryException {
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

}
