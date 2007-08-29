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
		
	DtCollection collection;
    collection = new DtCollection(sName,sDescription,sId,sSiteId);
                session.setAttribute("org.blueoxygen.cimande.collection.collect", collection);
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
		response.sendRedirect("descriptor_menu.jsp?code="+temp);     
%>