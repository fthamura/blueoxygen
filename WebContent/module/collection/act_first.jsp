<%@ include file="/include/db.jsp" %>
<%		String sStatus= request.getParameter("status");
		String edt = null;
		       edt = request.getParameter("idEdt");
		String desc = null;
		       desc = request.getParameter("id");       
		String temp = request.getParameter("code"); 
		String sSiteId = request.getParameter("site_id"); 
		String sId = request.getParameter("id");
		String sName = request.getParameter("name");
		String sDescription =request.getParameter("description");
		String sSkinId = request.getParameter("skin_id");
		String sSkinName = null;
		String sArtStatus =request.getParameter("art_status");
		String sActiveFlag =request.getParameter("active_flag");
		
mySQL = "SELECT name from skin WHERE id='"+sSkinId+"'";	
myResultSet = dbBean.execSQL(mySQL);
if(myResultSet.next())
{	sSkinName = myResultSet.getString("name");	}		
		
CollectionData collection;
   collection = new CollectionData(sName,sDescription,sId,sSiteId,sSkinId,sSkinName,sArtStatus,sActiveFlag);
                session.setAttribute("org.blueoxygen.cimande.collection.collect",collection);
	
	if (sStatus == null)
	{
		ArrayList arrList = (ArrayList)session.getAttribute("varexist");
		if (arrList == null) {
		 arrList = new ArrayList();
		}
		else { 
			arrList.clear();
		 }  
		 }      
if (sArtStatus.equalsIgnoreCase("0"))     
	{   
		response.sendRedirect("descriptor_menu.jsp?code="+temp);    
		
	}
	else
	{
		response.sendRedirect("descriptor_menu_ordered.jsp?code="+temp);
		} 
%>