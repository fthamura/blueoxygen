<%@ include file="db.jsp" %>
<%		String code = request.getParameter("code");
		String back = request.getParameter("back");
		String sSiteId = request.getParameter("site_id"); 
		String sRoleId = request.getParameter("role_id");
		String sRoleName = request.getParameter("role_name");
		String sRSiteId = request.getParameter("rsite_id");
		String sRSiteName = request.getParameter("rsite_name");

		
	RoleSitePrivilage rolesiteprivilage;
    rolesiteprivilage = new RoleSitePrivilage(sSiteId,sRoleId,sRoleName,sRSiteId,sRSiteName);
                session.setAttribute("org.blueoxygen.cimande.rolesite.rsprivilage", rolesiteprivilage);
	
	ArrayList arrList = (ArrayList)session.getAttribute("varexist");
			if (arrList == null) {
				 arrList = new ArrayList();
				}
			else { if (back==null) {  
					arrList.clear();
 					}	
				}
				
			mySQL = "select id,module_function_id from role_site_privilage where role_site_id='"+sRoleId+"' and rs_site_id='"+sRSiteId+"' and site_id='"+ sSiteId +"' ";
			myResultSet = dbBean.execSQL(mySQL);
			while (myResultSet.next()){
				int idx=arrList.size();		  
				Map map = new HashMap();
				map.put("id", myResultSet.getString("id"));
				map.put("module_id", myResultSet.getString("module_function_id"));
				
				mySQL = "select description from module_function where id='"+myResultSet.getString("module_function_id")+"'";
				myResultSet1 = dbBean.execSQL(mySQL);
				if (myResultSet1.next())
				{ map.put("module_name", myResultSet1.getString("description"));	 }
				
				arrList.add( idx, map );
 				}
				session.setAttribute("varexist", arrList);


		response.sendRedirect("wfroleSite.jsp?code="+code);     
%>
<%@ include file="/include/db_close.jsp" %>