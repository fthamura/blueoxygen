<%@ page language="java" import="java.util.*" %>

<%
String strid = request.getParameter("idn");
String temp = request.getParameter("code");
String artStatus = request.getParameter("art_status");

Iterator itr; 
ArrayList arrList = (ArrayList)session.getAttribute("varexist");
itr = arrList.iterator();
while (itr.hasNext()) {
	Map item = (Map) itr.next();
	
	if (strid.equalsIgnoreCase(item.get("id").toString())) {	
		arrList.remove(item);
		break;
	}
}
if (artStatus == null)
{
response.sendRedirect("descriptor_menu.jsp?act=add&code="+temp);
} else {
response.sendRedirect("descriptor_menu_ordered.jsp?act=add&code="+temp);
}	
%>
  
 		