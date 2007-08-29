<%@ include file="db.jsp" %>
<%		String code = request.getParameter("code");
		String back = request.getParameter("back");
		String sSiteId = null; 
		String sId = request.getParameter("id");
		String sWorkflowname = request.getParameter("workflow_name");
		String sWorkflowdesc = request.getParameter("workflow_desc"); 

	sSiteId = (String)session.getAttribute("GS_USER");
	Workflowrole workflowrole;
    workflowrole = new Workflowrole(sSiteId,sId,sWorkflowname,sWorkflowdesc);
                session.setAttribute("org.blueoxygen.cimande.rolesite.wfrole", workflowrole);
				
ArrayList arrList = (ArrayList)session.getAttribute("varexist");
			if (arrList == null) {
				 arrList = new ArrayList();
				}
			else { if (back==null) {  
					arrList.clear();
 					}	
				}
								
ArrayList siteList = (ArrayList)session.getAttribute("slist");
			if (siteList == null) {
				 siteList = new ArrayList();
				}
			else { if (back==null) {  
					siteList.clear();
 					}	
				}
				
			mySQL = "select rsite_id,id from role_site where role_id='"+sId+"' and site_id='"+ sSiteId +"' ";
			myResultSet = dbBean.execSQL(mySQL);
			while (myResultSet.next()){
				int idxSite=siteList.size();		  
				Map mapSite = new HashMap();
				mapSite.put("site_id", myResultSet.getString("rsite_id"));
				mySQL = "select name from site where id='"+myResultSet.getString("rsite_id")+"'";
				myResultSet1 = dbBean.execSQL(mySQL);
				if (myResultSet1.next())
				{ mapSite.put("site_name", myResultSet1.getString("name"));	 }
				siteList.add( idxSite, mapSite );
 				}
				session.setAttribute("slist", siteList);

if (code.equalsIgnoreCase("Add")){
		response.sendRedirect("wfroleSite.jsp?code="+code);     
		}
else {
	response.sendRedirect("delete_site.jsp?code="+code);   
}
		
%>