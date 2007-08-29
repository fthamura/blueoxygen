<%@ include file="db.jsp" %>
<%		String code = request.getParameter("code");
		String back = request.getParameter("back");
		String siteid = request.getParameter("id");
		String sId = null ; 
		String sSiteId = null ;
		String sSiteName = null ;

Iterator itr; 
ArrayList arrList = (ArrayList)session.getAttribute("varexist");
itr = arrList.iterator();
while (itr.hasNext()) {
	Map item = (Map) itr.next();
	if (siteid.equalsIgnoreCase(item.get("id").toString())) {	
 		sId = (String)item.get("id");
		sSiteId = (String)item.get("site_id");
		sSiteName = (String)item.get("site_name");
		break ;
		}
		}
		
ModuleFunctionSite mfsite;
mfsite = new ModuleFunctionSite(sId,sSiteId,sSiteName);
	session.setAttribute("org.blueoxygen.cimande.rolesite.modulefunction", mfsite);	
	
		response.sendRedirect("modulefunction.jsp?code="+code);     
%>