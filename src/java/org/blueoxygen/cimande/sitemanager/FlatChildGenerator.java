/**
 * 
 */
package org.blueoxygen.cimande.sitemanager;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.blueoxygen.cimande.modulefunction.ModuleFunction;
import org.blueoxygen.cimande.persistence.PersistenceManager;

/**
 * @author chibi
 *
 */
public class FlatChildGenerator {
	
	private ModuleFunction moduleFunction=null;
	private String rootId="";
	private String sId="";
	private String FlatJS="",variableNode="";
	private int i, Node;
	private PersistenceManager pm;
	// default variable
	String mySQL;
	
	public FlatChildGenerator ( String rootId , String variableNode, int Node,PersistenceManager manager) throws ClassNotFoundException, Exception  {
		this.rootId = rootId;
		this.sId = rootId;
		this.moduleFunction = (ModuleFunction) manager.getById(ModuleFunction.class, rootId);	
		this.Node=Node;
		this.variableNode=variableNode;
		this.pm = manager;
	}
	
	/**
	 * return root id
	 */
	public String getRootId()  {
		return this.rootId;
	}

	/**
	 * return moduleFunction
	 */
	public ModuleFunction getRoot() {
		return 	this.moduleFunction;
	}
	
	public int getChildCount()throws ClassNotFoundException, SQLException, Exception {
		/**
		 * modified in 24 july'06 using hibernate
		 */
		mySQL = "FROM "+ModuleFunction.class.getName()+" mf WHERE mf.logInformation.activeFlag='1' AND mf.moduleFunction.id='"+this.sId+"'";
		List temp = new ArrayList();
		temp = pm.getList(mySQL,null,null);
		return temp.size();
	}
	
	public String getFlatJS() throws ClassNotFoundException, SQLException, Exception {
		
		FlatChildGenerator FlatChild;
		
		String sParentId="";
		i=0;
		mySQL = "FROM mf in " + ModuleFunction.class + " WHERE mf.moduleFunction.id = '" + this.sId + "' ORDER BY(mf.description)";
		List<ModuleFunction> modules = new ArrayList<ModuleFunction>();
		modules = (List<ModuleFunction>)pm.getList(mySQL,null,null);
		
		for(ModuleFunction mf : modules) { 

			sParentId = mf.getId();

			// add to List
			ModuleFunction mFunction = (ModuleFunction) pm.getById(ModuleFunction.class, sParentId);

			int totalChild ;
			FlatChild = new FlatChildGenerator(mFunction.getId(), variableNode+"_"+Node, i, pm);

			totalChild = FlatChild.getChildCount();	

			// check the child after this object. if > 0 mean generate leaf descriptor
			if (totalChild>0) {
				//FlatJS = FlatJS + "<div class=\"pkg\"><h3>"+mf.getDescription()+"</h3><div class=\"pkg-body\">"; //dbTreeChild.getDescription();
				FlatJS = FlatJS + FlatChild.getFlatJS();
				//FlatJS = FlatJS + "</div></div>";
			} else {
				String sActionFlag="", sUrlAction="";
				/* check the record in descriptor table
				 * if the action_flag = 1 means url_action
				 * else the node is url_descriptor value
				 */

				sActionFlag=String.valueOf(mf.getModuleDescriptor().getTypeFlag());

				if (sActionFlag.equals("1")) {
					sUrlAction = mf.getModuleDescriptor().getUrlAction()+"&";
				} else if (sActionFlag.equals("2")) {
					sUrlAction = "../module/"+mf.getModuleDescriptor().getName()+"/";
				} else if (sActionFlag.equals("3")){
					sUrlAction = "../module/window/genform.action?window.id="+mf.getModuleDescriptor().getWindow().getId()+"&";
				} else {
					sUrlAction = "../descriptor/"+mf.getModuleDescriptor().getUrlDescriptor()+"?";
				}

				// check the child after this object. if > 0 mean generate branch module

				FlatJS = FlatJS  + "<li><a href=\""+sUrlAction+"create.action\" target=\"main\">"+mf.getDescription() + "</a></li>"; //dbTreeChild.getDescription();

			}
			i++;
		}
		return FlatJS;

	}

}
