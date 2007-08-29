<%@ include file="/include/header_module.jsp"%>
<%@ include file="db.jsp"%>

<%
String code=request.getParameter("code");

//cek kalo item yang mau ditambahin udah ada, jadi ditolak (proses ini udah dijalanin di actAddVarList.jsp
//disini cuman nyampein pesen ke user aja.

if (request.getParameter("strExst") != null) { %>
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Role Site Privilage &nbsp;&nbsp;<font color="blue"> (Module Function Already Exist !! )</font></b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
	
<% } else { %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Role Site Privilage</b></td>
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
      	<td bgcolor="#eeeeee" colspan="5"><b> Role Site Privilage Detail
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Module Function ID</b></td>
	<td align="center" ><b>Module Function Name </b></td>
	<td align="center" colspan="3" ><b>Action</b></td></tr>
<%

Iterator i ;
ArrayList arrList = (ArrayList) session.getAttribute("varexist");

if (arrList != null) {
	i = arrList.iterator(); 
	while (i.hasNext()) {
		Map item = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		out.println("<td width=\"30%\">" + item.get("module_id") + "</td>");
			out.println("<td width=\"40%\">" + item.get("module_name") + "</td>");
		out.println("<td align=\"center\" width=\"10%\"><a href='wfroleSite.jsp?idn=" + item.get("id") + "&act=edit&code="+code+"'>Edit</a></td>");
		out.println("<td align=\"center\" width=\"10%\"><a href='del_detail.jsp?idn=" + item.get("id")  + "&code="+code+"'>Del</a></td></tr>");
	   }
	   
}
%>
</table>
<table width="100%"">
<tr>
	<td colspan="5" align="right" valign="top">
	<form action="summary.jsp?code=<%= code %>" name="frmSummary" method="post">
	<input type="submit" value="&lt;&lt; Back" onclick="history.go(-1);">
	<input type="submit" value="Summary"></form></td></tr></table>
	</td>
</tr>
</table>
</td></tr>
</table>
<%@ include file="/include/db_close.jsp"%>
<%@ include file="/include/footer_module.jsp" %>	

<script language="JavaScript">
<!--
function ceksubmit()
	{ 
		
		if (document.frmForm.module_id.value=="")
		{ alert("Module ID can not be blank.");
		  return false;
		}	
		else
		{ document.frmForm.submit();
		   }
	}		
		
function GoAddressModule()
	{
		window.open("view_module.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes,center");
	}		
-->
</script>