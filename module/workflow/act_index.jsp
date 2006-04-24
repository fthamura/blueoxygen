<%@ include file="db.jsp" %>
<%		String code = request.getParameter("code");
		String back = request.getParameter("back");
		String sSiteId = request.getParameter("site_id"); 
		String sId = request.getParameter("id");
		String sWorkflowname = request.getParameter("workflow_name");
		String sWorkflowdesc = request.getParameter("workflow_desc"); 

		
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
		
	if (code.equalsIgnoreCase("edit")) {
				
			mySQL = "select * from user_site where user_id='"+sId+"' and site_id='"+ sSiteId +"' ";
			myResultSet = dbBean.execSQL(mySQL);
			while (myResultSet.next()){
				int idx=arrList.size();		  
				Map map = new HashMap();
				map.put("id", myResultSet.getString("id"));
				map.put("site_id", myResultSet.getString("user_site_id"));
				mySQL = "select name from site where id='"+myResultSet.getString("user_site_id")+"'";
				myResultSet1 = dbBean.execSQL(mySQL);
				if (myResultSet1.next())
				{ map.put("site_name", myResultSet1.getString("name"));	 }
				
				arrList.add( idx, map );
 				}
				session.setAttribute("varexist", arrList);
	}

		response.sendRedirect("wfroleSite.jsp?code="+code);     
%>