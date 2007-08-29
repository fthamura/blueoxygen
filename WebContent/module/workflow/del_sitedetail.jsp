<%@ page language="java" import="java.util.*" %>

<%
String strid = request.getParameter("idn");
String code = request.getParameter("code");
String id = request.getParameter("id");
Iterator itr; 
ArrayList siteList = (ArrayList)session.getAttribute("site");
itr = siteList.iterator();
while (itr.hasNext()) {
	Map siteitem = (Map) itr.next();
	
	if (strid.equalsIgnoreCase(siteitem.get("id").toString())) {	
		siteList.remove(siteitem);
		break;
	}
}
response.sendRedirect("modulefunction.jsp?act=add&code="+code);
%>
  
 		