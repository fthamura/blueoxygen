<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>
<%

String code=request.getParameter("code");

//cek kalo item yang mau ditambahin udah ada, jadi ditolak (proses ini udah dijalanin di actAddVarList.jsp
//disini cuman nyampein pesen ke user aja.

if (request.getParameter("strExst") != null) { %>
	<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Role Site &nbsp;&nbsp;<font color="blue"> (Role Site Already Exist !! )</font></b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
	
<% } else { %>
 
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Role Site</b></td>
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
      	<td bgcolor="#eeeeee" colspan="5"><b> Role Site Detail
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Site ID</b></td>
	<td align="center" ><b>Site Name </b></td>
	<td align="center" colspan="3" ><b>Action</b></td></tr>
<%

Iterator i ;
ArrayList arrList = (ArrayList) session.getAttribute("varexist");

if (arrList != null) {
	i = arrList.iterator(); 
	while (i.hasNext()) {
		Map item = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		out.println("<td width=\"30%\">" + item.get("site_id") + "</td>");
			out.println("<td width=\"40%\">" + item.get("site_name") + "</td>");
		out.println("<td align=\"center\" width=\"10%\"><a href='wfroleSite.jsp?idn=" + item.get("id") + "&act=edit&code="+code+"'>Edit</a></td>");
		out.println("<td align=\"center\" width=\"10%\"><a href='del_detail.jsp?idn=" + item.get("id")  + "&code="+code+"'>Del</a></td>"); 
		out.println("<td align=\"center\" width=\"10%\"><a href='act_modulefunction.jsp?id=" + item.get("id")  + "&code="+code+"' target=\"_blank\">Module Function</a></td></tr>");
	   }
	   
}
%>
</table>
<table width="100%"">
<tr>
	
	<td colspan="5" align="right" valign="top"><table><tr><td>
	<%
	if ((code == null) || (code.equalsIgnoreCase("add")))
	{
	%>
	<form action="index_b.jsp"><input type="submit" value="&lt;&lt; back"></form>
	<%
	} else {
	%>
	<form action="index_b.jsp"><input type="submit" value="&lt;&lt; back"></form>
	<%
	}
	%>
	</td><td><form action="summary.jsp?code=<%= code %>" name="frmSummary" method="post"><input type="submit" value="Summary"></form></td></tr></table>
	
	</td>
</tr>
</table>
</td></tr>
</table>
<%@ include file="footer.jsp" %>

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
function GoAddressSite()
	{
		window.open("view_site.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}		
-->
</script>