<%@ page language="java" import="java.util.*" %>

<%
String strid = request.getParameter("idn");
String temp = request.getParameter("code");
Iterator itr; 
ArrayList arrList = (ArrayList)session.getAttribute("collect");
itr = arrList.iterator();
while (itr.hasNext()) {
	Map item = (Map) itr.next();
	
	if (strid.equalsIgnoreCase(item.get("id").toString())) {	
		arrList.remove(item);
		break;
	}
}
response.sendRedirect("collection_menu.jsp?act=add&code="+temp);
%>
  
 		