<%
if (session.getAttribute("GA_USER")!=null) {
 if (request.getParameter("action")==null || (request.getParameter("action").equalsIgnoreCase("new"))) { 
 	
	%>
<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>
<%
String code = request.getParameter("code");
int x;
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
<form action="save.jsp?code=<%= code%>" method="post" >
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
      	<td bgcolor="#eeeeee"><b> Role Site
        </b></td>
        </tr>
<%
Iterator j ;
ArrayList siteList = (ArrayList) session.getAttribute("slist");
x=1;
if (siteList != null) {
	j = siteList.iterator(); 
	while (j.hasNext()) {
		Map siteitem = (Map) j.next();
    		out.println("<tr bgcolor=ffffff>");
			out.println("<td width=\"40%\">" + x + ". "+ siteitem.get("site_name") + "</td>");
			x++;
%>
</td></tr>
<%
}
}
%>		
</table>
<br>	
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="4"><b>Transaction Result
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Site ID</b></td>
	<td align="center" ><b>Site Name</b></td>
	</tr>
<%

Iterator i ;
ArrayList arrList = (ArrayList) session.getAttribute("varexist");


if (arrList != null) {
	i = arrList.iterator(); 
	while (i.hasNext()) {
		Map item = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		out.println("<td>" + item.get("site_id") + "</td>");
			out.println("<td>" + item.get("site_name") + "</td>");
		
	   }
	   
}
%>
</table>
<br>
     <table bgcolor="black" border="0" cellpadding="0" cellspacing="0" width="100%">
     <tr bgcolor="#ffffff" valign="top"> 
      <td align="right"><input type="button" value="&lt;&lt; Back" onclick="history.go(-1);">&nbsp;<input name="submit"  type="submit" value=" Save ">
      </td>
    </tr>
</table>

</td></tr></form></table>
</td></tr></table>
<%@ include file="footer.jsp" %>
<%
} else { if (request.getParameter("action").equalsIgnoreCase("search")) { %>
<%@ include file="search.jsp" %>

<%
}
}
%>
<% } else {
%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table></body></html>
<% } %>


<% } else { out.println("Session User login = null cannot generate user login detail !!"); }
%>