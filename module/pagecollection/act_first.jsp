<%@ include file="/include/db.jsp" %>
<%	
		String sTemp = request.getParameter("code"); 
		String sStatus = request.getParameter("status");
		String sSiteId = request.getParameter("site_id"); 
		String sId = request.getParameter("id");
		String sName = request.getParameter("name");
		String sDescription =request.getParameter("description");
		String sSkinId = request.getParameter("skin_id");
		String sSkinName = null;
		String sCategory =request.getParameter("category");
		String sActiveFlag =request.getParameter("active_flag");
		
mySQL = "SELECT name from skin WHERE id='"+sSkinId+"'";	
myResultSet = dbBean.execSQL(mySQL);
if(myResultSet.next())
{	sSkinName = myResultSet.getString("name");	}

PageCollection pagecollection;
   pagecollection = new PageCollection(sId,sSiteId,sName,sDescription,sSkinId,sSkinName,sCategory,sActiveFlag);
                session.setAttribute("org.blueoxygen.cimande.pagecollection.pcollection",pagecollection);
		if (sStatus == null)
		{
		ArrayList arrList = (ArrayList)session.getAttribute("collect");
		if (arrList == null) {
	 	arrList = new ArrayList();
		} else { arrList.clear(); }     
		}           
		response.sendRedirect("collection_menu.jsp?code="+sTemp);     

%>
<%@ include file="/include/db_close.jsp" %>
