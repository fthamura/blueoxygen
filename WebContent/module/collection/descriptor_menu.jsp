<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>
<%

String temp=request.getParameter("code");

//cek kalo item yang mau ditambahin udah ada, jadi ditolak (proses ini udah dijalanin di actAddVarList.jsp
//disini cuman nyampein pesen ke user aja.

if (request.getParameter("strExst") != null) { %>
	<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Collection&nbsp;&nbsp;<font color="blue"> (Descriptor Already Exist !! )</font></b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
	
<% } else { %>
 
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Collection</b></td>
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
	
<%@ include file="add_des.jsp" %>
<% } else {%>
<%@ include file="edit_des.jsp" %>

<% 
} %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="4"><b> Transaction
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Descriptor ID</b></td>
	<td align="center" ><b>Descriptor Name</b></td>
	<td align="center" colspan="2" ><b>Action</b></td></tr>
<%

Iterator i ;
ArrayList arrList = (ArrayList) session.getAttribute("varexist");

if (arrList != null) {
	i = arrList.iterator(); 
	while (i.hasNext()) {
		Map item = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		out.println("<td>" + item.get("descriptor_id") + "</td>");
    		out.println("<td>" + item.get("descriptor_name") + "</td>");
		out.println("<td><a href='descriptor_menu.jsp?idn=" + item.get("id") + "&act=edit&code="+temp+"'>Edit</a></td>");
		out.println("<td><a href='del_des.jsp?idn=" + item.get("id")  + "&code="+temp+"'>Del</a></td></tr>"); 
	   }
	
}
%>

</table>
<table width="100%"">
<tr>
	
	<td colspan="5" align="right" valign="top"><table><tr><td>
	<%
	if ((temp == null) || (temp.equalsIgnoreCase("add")))
	{
	%>
	<form action="first_b.jsp"><input type="submit" value="&lt;&lt; back"></form>
	<%
	} else {
	%>
	<form action="edit_b.jsp"><input type="submit" value="&lt;&lt; back"></form>
	<%
	}
	%>
	</td><td><form action="summary_des.jsp?code=<%= temp %>" name="frmSummary" method="post"><input type="submit" value="Summary"></form></td></tr></table>
	
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
		
		if (document.frmForm.descriptor_id.value=="")
		{ alert("Descriptor ID can not be blank.");
		  return false;
		}	
		else
		{ document.frmForm.submit();
		   }
	}		
function GoAddressDescriptor()
	{
		window.open("view_descriptor.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}		
-->
</script>