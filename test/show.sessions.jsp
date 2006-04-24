<%@ include file="/include/global.inc.jsp" %>
<html>
<head>
    <title>Test Session Cimande</title>
</head>

<body>

<h1><% 

String sGA_USER;
sGA_USER=(String)session.getAttribute("GA_USER");
	
if (session.getAttribute("GA_USER")!=null) {	%>
GA_USER is not null, cimande user is logged
<% } else { %>
GA_USER is null, cimande user is not logged
<% }  %></h1>

GA_USER a Admin hash <%=(String)session.getAttribute("GA_USER")%><br>
GS_USER a Site hash <%=(String)session.getAttribute("GS_USER")%><br>
<%=loginBean.getFirstName()%> - <%=loginBean.getRoleName()%>

</body>
</html>
