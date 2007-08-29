<script language="JavaScript" version="1.2">
function warningMessage() {
var x=false;
if (confirm("Are you sure you? This cannot be undone!")) {
 return true;
} else {
 return false;
}
}
</script>

<%
if (session.getAttribute("GA_USER")!=null) {
	%>
<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>
<%
String code = request.getParameter("code");
	Workflowrole workflowrole;
    workflowrole = (Workflowrole)session.getAttribute("org.blueoxygen.cimande.rolesite.wfrole");

if (workflowrole != null) 
	{

%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Role Site</b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
<table bgcolor="black" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr bgcolor="#ffffff" valign="top"><td><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%"><tr bgcolor="#ffffff" valign="top"><td bgcolor="#D0DCFF" colspan="3"><b>Master</td></tr>

    <tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Role ID: 
					</div></td><td><font color="blue"><b><%= workflowrole.getID()%></b></font>
					</td><td>&nbsp;</td></tr>
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">Name: 
					</div></td><td><%= workflowrole.getWorkflowname()%></td><td>&nbsp;</td></tr>
	
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">Description: 
					</div></td><td><%= workflowrole.getWorkflowdesc()%></td><td>&nbsp;</td></tr>
	</table>
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="4"><b>Role Site Detail
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Site ID</b></td>
	<td align="center" ><b>Site Name</b></td>
	<td align="center" ><b>Action</b></td></tr>
	</tr>
<%

Iterator i ;
ArrayList siteList = (ArrayList) session.getAttribute("slist");


if (siteList != null) {
	i = siteList.iterator(); 
	while (i.hasNext()) {
		Map item = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		out.println("<td>" + item.get("site_id") + "</td>");
			out.println("<td>" + item.get("site_name") + "</td>");
			%>
			<td align="center" width="10%"><a href='del_site.jsp?idn="<% out.println(item.get("site_id")); %>"&code="<%= code%>"' onclick="return warningMessage();" >Del</a></td></tr>
<%
}
}
%>
</table>
<br>
     <table bgcolor="black" border="0" cellpadding="0" cellspacing="0" width="100%">
     <tr bgcolor="#ffffff" valign="top"> 
      <td align="right"><input type="submit" value="&lt;&lt; Back" onclick="history.go(-1);">
      </td>
    </tr>
</table>

</td></tr></table>
</td></tr></table>
<%@ include file="footer.jsp" %>

<% } else {
%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table></body></html>
<% } %>
<% } else { out.println("Session User login = null cannot generate user login detail !!"); }
%>