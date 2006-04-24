<%@ page language="java" import="java.util.*" %>

<%
String strid = request.getParameter("idn");
String code = request.getParameter("code");

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
response.sendRedirect("wfroleSite.jsp?act=add&code="+code);
%>
  
 		