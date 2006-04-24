<%@ include file="/include/db.jsp" %>
<%		String code = ""+request.getParameter("code");
		String back = ""+request.getParameter("back");
		String sSiteId = request.getParameter("site_id"); 
		String sId = request.getParameter("id");
		String sUsername = request.getParameter("username");
		String sPassword = request.getParameter("password"); 
		String sFirstName = request.getParameter("first_name");
		String sLastName = request.getParameter("last_name");
		String sCompanyId = request.getParameter("company_id"); 
		String sCompanyName = request.getParameter("company_name"); 	
		String sPositionID = request.getParameter("position_id"); 
		String sPositionName = request.getParameter("position_name"); 			
		String sEmail = request.getParameter("email");
		String sAddress1 = request.getParameter("address1");
		String sAddress2 = request.getParameter("address2"); 
		String sCity = request.getParameter("city");
		String sRoleId = null;
		String sDescription = request.getParameter("description");
		String sCal = request.getParameter("cal");	
		String sProject = request.getParameter("project");		
		String sActiveFlag = request.getParameter("active_flag");
		
		UserSite usersite;
    	usersite = new UserSite(sSiteId,sId,sUsername,sPassword,sFirstName,sLastName,sCompanyId,sCompanyName,sPositionID,sPositionName,sEmail,sAddress1,sAddress2,sCity,sRoleId,sDescription,sCal,sProject,sActiveFlag);
        
        session.setAttribute("org.blueoxygen.cimande.usersite.usite", usersite);

	if (!back.equalsIgnoreCase("active")) {  //jika bukan back maka arraylist akan dihapus dari session
			ArrayList roleList = (ArrayList)session.getAttribute("role");
			if (roleList == null) { roleList = new ArrayList();		}
			else { roleList.clear();	}	
			
			ArrayList arrList = (ArrayList)session.getAttribute("varexist");
			if (arrList == null) { arrList = new ArrayList();	}
			else { arrList.clear(); 	} 
			
		if (code.equalsIgnoreCase("edit")) {			//cek apakah input berupa edit jika edit maka generate arraylist berdasarkan database bersangkutan 

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
					  
			mySQL = "select user_role.*,workflow_role.name from user_role LEFT JOIN workflow_role ON (user_role.role_id=workflow_role.id) where user_id='"+sId+"' order by 'default_role' desc";
			myResultSet = dbBean.execSQL(mySQL);
			while (myResultSet.next()){
					int idx=roleList.size();		  
					Map map = new HashMap();
					map.put("id", myResultSet.getString("user_role.id"));
					map.put("role_id", myResultSet.getString("user_role.role_id"));				
					map.put("role_name", myResultSet.getString("workflow_role.name") );				
					roleList.add( idx, map );
	 			}
			session.setAttribute("role", roleList);
		 }  
	}
	response.sendRedirect("userrole.jsp?code="+code);     
%>
<%@ include file="/include/db_close.jsp" %>