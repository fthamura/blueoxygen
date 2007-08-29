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
      	<td bgcolor="#ffccff"><b>Role Site &nbsp;&nbsp;<font color="blue"> (Module Function Already Exist !! )</font></b></td>
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
<%@ include file="master_site.jsp" %>
   	     	
<tr bgcolor="#ffffff" valign="top"> 

      	<td bgcolor="white" colspan="10">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="10"><b> Detail
        </b></td>
        </tr>    	     	
<% if (request.getParameter("act")==null || request.getParameter("act").equalsIgnoreCase("add")) {
	%>
<%@ include file="add_sitedetail.jsp" %>
<% } else {%>
<%@ include file="edit_sitedetail.jsp" %>

<% 
} %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="4"><b> Role Site Detail
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Module ID</b></td>
	<td align="center" ><b>Module Desc.</b></td>
	<td align="center" colspan="2" ><b>Action</b></td></tr>
<%

Iterator i ;
ArrayList siteList = (ArrayList) session.getAttribute("site");

if (siteList != null) {
	i = siteList.iterator(); 
	while (i.hasNext()) {
		Map siteitem = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		out.println("<td>" + siteitem.get("module_id") + "</td>");
			out.println("<td>" + siteitem.get("module_name") + "</td>");
		out.println("<td><a href='modulefunction.jsp?idn=" + siteitem.get("id") + "&act=edit&code="+code+"'>Edit</a></td>");
		out.println("<td><a href='del_sitedetail.jsp?idn=" + siteitem.get("id")  + "&code="+code+"'>Del</a></td></tr>"); 
	   }   
}

%>
</table>
<table width="100%"">
<tr>
	
	<td colspan="5" align="right" valign="top"><table><tr><td>
	</td><td><form action="save_module.jsp?code=<%= code %>" name="frmSummary" method="post"><input type="submit" value="OK"></form></td></tr></table>


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
function GoAddressModule()
	{
		window.open("view_module.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}		
-->
</script>