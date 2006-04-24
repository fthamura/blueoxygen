<%@ include file="/include/header_module.jsp"%>
<%@ include file="db.jsp"%>

<%
if (session.getAttribute("GA_USER")!=null) {
 if (request.getParameter("action")==null || (request.getParameter("action").equalsIgnoreCase("new"))) { 

	String code = request.getParameter("code");
	RoleSitePrivilage roleSitePrivilage;
    roleSitePrivilage = (RoleSitePrivilage)session.getAttribute("org.blueoxygen.cimande.rolesite.rsprivilage");


if (roleSitePrivilage != null) 
	{

%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Role Site Privilage</b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
	<form action="save.jsp?code=<%= code%>" method="post" >
	<table bgcolor="black" border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr bgcolor="#ffffff" valign="top"><td><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%"><tr bgcolor="#ffffff" valign="top"><td bgcolor="#D0DCFF" colspan="3"><b>Master</td></tr>

    <tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">Role ID: 
					</div></td><td><%= roleSitePrivilage.getRoleID()%></td><td>&nbsp;</td></tr>
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">Role Name: 
					</div></td><td><%= roleSitePrivilage.getRoleName()%></td><td>&nbsp;</td></tr>
	
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">Site ID: 
					</div></td><td><%= roleSitePrivilage.getRSiteID()%></td><td>&nbsp;</td></tr>
		
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">Site Name: 
					</div></td><td><%= roleSitePrivilage.getRSiteName()%></td><td>&nbsp;</td></tr>
	</table><br>
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="4"><b>Detail
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Module ID</b></td>
	<td align="center" ><b>Module Name</b></td>
	</tr>
<%

Iterator i ;
ArrayList arrList = (ArrayList) session.getAttribute("varexist");


if (arrList != null) {
	i = arrList.iterator(); 
	while (i.hasNext()) {
		Map item = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		out.println("<td>" + item.get("module_id") + "</td>");
			out.println("<td>" + item.get("module_name") + "</td>");
		
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
<%
} else { if (request.getParameter("action").equalsIgnoreCase("search")) { %>
<%@ include file="search.jsp" %>

<%
		}
	}
} else {
%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table>
<% 		} 
	 } else { out.println("Session User login = null cannot generate user login detail !!"); }
%>
<%@ include file="/include/db_close.jsp"%>
<%@ include file="/include/footer_module.jsp" %>	