<%@ include file="/include/header_module.jsp" %>
<%@ include file="/include/db.jsp" %>
<%

String temp=request.getParameter("code");

//cek kalo item yang mau ditambahin udah ada, jadi ditolak (proses ini udah dijalanin di actAddVarList.jsp
//disini cuman nyampein pesen ke user aja.

if (request.getParameter("strExst") != null) { %>
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Page Collection&nbsp;&nbsp;<font color="blue"> (Frontpage Detail Already Exist !! )</font></b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
	
<% } else { %>
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Page Collection</b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
      	
      	
<% } %>      	
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#D0DCFF" colspan="2"><b>Master</b></td>
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
<%@ include file="add_col.jsp" %>
<% } else {%>
<%@ include file="edit_col.jsp" %>

<% 
} %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="10"><b> Transaction
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Collection ID</b></td>
	<td align="center" ><b>Collection Name</b></td>
	<td align="center" colspan="2" ><b>Action</b></td></tr>
<%

Iterator i ;

ArrayList arrList = (ArrayList) session.getAttribute("collect");

if (arrList != null) {
	i = arrList.iterator(); 
	while (i.hasNext()) {
		Map item = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		
    		out.println("<td>" + item.get("collection_id") + "</td>");
    		out.println("<td>" + item.get("collection_name") + "</td>");

		out.println("<td><a href='collection_menu.jsp?idn=" + item.get("id") + "&code="+temp+"&act=edit'>Edit</a></td>");
		out.println("<td><a href='del.jsp?idn=" + item.get("id")  + "&code="+temp+"'>Del</a></td></tr>"); 
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
	<form action="first_b.jsp" method="post"><input type="submit" value="&lt;&lt; Back"></form>
	<%
	} else {
	%>
	<form action="edit_b.jsp" method="post"><input type="submit" value="&lt;&lt; Back"></form>
	<%
	}
	%>
	</td><td><form action="summary.jsp?code=<%= temp %>" name="frmSummary" method="post"><input type="submit" value="Summary"></form></td></tr></table>
	</td>
</tr>
</table>
</td></tr>
</table>

<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>

<script language="JavaScript">
<!--
function ceksubmit()
	{ 	
		if (document.frmForm.collection_id.value=="")
		{ alert("Collection ID can not be blank.");
		  return false;
		}			
		else
		{ document.frmForm.submit();
		   }
	}		
function GoAddressCollection()
	{
		window.open("view_collection.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}		
-->
</script>