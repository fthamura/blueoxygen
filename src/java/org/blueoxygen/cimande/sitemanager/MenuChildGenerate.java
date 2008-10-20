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
public class MenuChildGenerate {
	
	private ModuleFunction moduleFunction=null;
	private String rootId="";
	private String sId="";
	private String MenuJS="",variableNode="";
	private int i, Node,nextLevel,child = 1,size;
	private PersistenceManager pm;
	// default variable
	String mySQL;
	
	public MenuChildGenerate (String rootId , String variableNode, int Node,PersistenceManager manager) throws ClassNotFoundException, Exception {
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
	
		mySQL = "FROM "+ModuleFunction.class.getName()+" mf WHERE mf.logInformation.activeFlag='1' AND mf.moduleFunction.id='"+this.sId+"'";
		List temp = new ArrayList();
		temp = pm.getList(mySQL,null,null);
		return temp.size();
	}
	
	public String getMenuJS(int nextLevel) throws ClassNotFoundException, SQLException, Exception {
		this.nextLevel = nextLevel;
		
		MenuChildGenerate childGenerate;

		String sParentId="";
		//i=1;
		mySQL = "FROM mf in " + ModuleFunction.class + " WHERE mf.moduleFunction.id = '" + this.sId + "' ORDER BY(mf.description)";
		List<ModuleFunction> modules = new ArrayList<ModuleFunction>();
		modules = (List<ModuleFunction>)pm.getList(mySQL,null,null);
		i = modules.size();
		size = 0;
		
		for(ModuleFunction mf : modules){
			
			sParentId = mf.getId();
			
			ModuleFunction mFunction = (ModuleFunction) pm.getById(ModuleFunction.class, sParentId);

			int totalChild ;
			childGenerate = new MenuChildGenerate(mFunction.getId(), variableNode+"_"+Node, i, pm);

			totalChild = childGenerate.getChildCount();
			
			
			if(totalChild > 0){
				MenuJS = MenuJS + "<li onmouseover=\"Element.addClassName(this,'over')\" onmouseout=\"Element.removeClassName(this,'over')\" class=\"parent level"+nextLevel+"\"><span>"+mf.getDescription()+"</span><ul>";
				//nextLevel = nextLevel + 1;
				MenuJS = MenuJS + childGenerate.getMenuJS(nextLevel);
				MenuJS = MenuJS + "</ul></li>";
				
					
			}else{
				child = child + nextLevel;
				String sActionFlag="", sUrlAction="";
				
				sActionFlag=String.valueOf(mf.getModuleDescriptor().getTypeFlag());
				
				if (sActionFlag.equals("1")) {
					sUrlAction = mf.getModuleDescriptor().getUrlAction()+"&";
				} else if (sActionFlag.equals("2")) {
					sUrlAction = "../module/"+mf.getModuleDescriptor().getName()+"/";
				} else if (sActionFlag.equals("3")){
					sUrlAction = "../module/window/genform.action?window.id="+mf.getModuleDescriptor().getWindow().getId()+"&";
				}else {
					sUrlAction = "../descriptor/"+mf.getModuleDescriptor().getUrlDescriptor()+"?";
				}
				
				MenuJS = MenuJS + "<li onmouseover=\"Element.addClassName(this,'over')\" onmouseout=\"Element.removeClassName(this,'over')\" class=\"parent level"+nextLevel+"\"><span><a href=\"#\" onclick=\"return false\">"+ mf.getDescription() +"</a></span><ul>";
				
				if (sActionFlag.equals("2")) {
					
					MenuJS = MenuJS + "<li class=\"level"+child+"\"><a href=\""+sUrlAction+"create.action\" target=\"main\">New</a></li>";
				} else {
					MenuJS = MenuJS + "<li class=\"level"+child+"\"><a href=\""+sUrlAction+"action=new\">New</a></li>";
				}
				
				if (sActionFlag.equals("2")) {
					
					MenuJS = MenuJS + "<li class=\"last level"+child+"\"><a href=\""+sUrlAction+"filter.action\" target=\"main\">Search</a></li>";
				} else {
					MenuJS = MenuJS + "<li class=\"last level"+child+"\"><a href=\""+sUrlAction+"action=search\">Search</a></li>";
				}
				
				MenuJS = MenuJS + "</ul></li>";
				child = 1;
				
								
			}
			size++;
		}
		//System.out.println("Size :"+size+", i :"+i);
		nextLevel = 0;
		this.nextLevel = nextLevel;
		//System.out.println(nextLevel);
		return MenuJS;
	}
}
