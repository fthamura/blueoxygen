<%@ page language="java" import="java.util.*" %>

<%
String strid = request.getParameter("idn");
String code = request.getParameter("code");

Iterator itr; 
ArrayList roleList = (ArrayList)session.getAttribute("role");
itr = roleList.iterator();
while (itr.hasNext()) {
	Map item = (Map) itr.next();
	
	if (strid.equalsIgnoreCase(item.get("id").toString())) {	
		roleList.remove(item);
		break;
	}
}
response.sendRedirect("userrole.jsp?act=add&code="+code);
%>
  
 		