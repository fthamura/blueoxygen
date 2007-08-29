<%@ include file="/include/header_module.jsp"%>
<%@ include file="/include/db.jsp"%>
<%
String code=request.getParameter("code");

//cek kalo item yang mau ditambahin udah ada, jadi ditolak (proses ini udah dijalanin di actAddVarList.jsp
//disini cuman nyampein pesen ke user aja.

if (request.getParameter("strExst") != null) { %>
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>UserSite &nbsp;&nbsp;<font color="blue"> (Site Already Exist !! )</font></b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
	
<% } else { %>
 
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>User Site</b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
      	
<% } %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#D0DCFF" colspan="3"><b>Master</b></td>
      	</tr>
<%@ include file="master.jsp" %>
   	     	
<tr bgcolor="#ffffff" valign="top"> 

      	<td bgcolor="white" colspan="10">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="10"><b> Detail
        </b></td>
        </tr>    	     	
<% if (request.getParameter("act")==null || request.getParameter("act").equalsIgnoreCase("add")) {
	%>
<%@ include file="add_detail.jsp" %>
<% } else {%>
<%@ include file="edit_detail.jsp" %>

<% 
} %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="4"><b> User Site Detail
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Site ID</b></td>
	<td align="center" ><b>Site Name</b></td>
	<td align="center" colspan="2" ><b>Action</b></td></tr>
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
		out.println("<td><a href='usersite.jsp?idn=" + item.get("id") + "&act=edit&code="+code+"'>Edit</a></td>");
		out.println("<td><a href='del_detail.jsp?idn=" + item.get("id")  + "&code="+code+"'>Del</a></td></tr>"); 
	   }
	   
}
%>
</table>
<table width="100%""><tr>
	
	<td colspan="5" align="right" valign="top"><table><tr><td>
	<form action="userrole.jsp?code=<%= code %>"><input type="submit" value="&lt;&lt; Back"></form>
	</td><td><form action="summary.jsp?code=<%= code %>" name="frmSummary" method="post"><input type="submit" value="Summary"></form></td></tr></table>
	
	</td></tr>
</table>
</td></tr>
</table>

<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>


<script language="JavaScript">
<!--
function ceksubmit()
	{ 
		if (document.frmForm.site_id.value=="")
		{ alert("Site ID can not be blank.");
		  return false;
		}	
		else
		{ document.frmForm.submit();
		}
	}		
function GoAddresssite()
	{
		window.open("view_site.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}		
function GoAddressModule()
	{
		window.open("view_module.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}		
-->
</script>