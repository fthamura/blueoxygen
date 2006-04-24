<%@ include file="/include/header_module.jsp"%>
<%@ include file="/include/db.jsp"%>
<%
if (session.getAttribute("GA_USER")!=null) {
 	if (request.getParameter("action")==null || (request.getParameter("action").equalsIgnoreCase("new"))) { 
%>

<%@ include file="rolesite.jsp"  %>

<%
} else { if (request.getParameter("action").equalsIgnoreCase("search")) { %>
<%@ include file="search.jsp" %>
<%
}
}
%>
<% } else {
%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table>
<% } %>
<%@ include file="/include/db_close.jsp"%>
<%@ include file="/include/footer_module.jsp" %>
