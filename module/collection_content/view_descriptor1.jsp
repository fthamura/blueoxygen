<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>View Descriptor</title>
	<LINK href="/cimande/style.css" rel="stylesheet" type="text/css">
	
</head>

<body bgcolor="lightyellow" width="98%">
<CENTER>

<%@ include file="/include/db.jsp" %>

<%	
mySQL = "select descriptor_id,descriptor_name from collection_descriptor where collection_id='"+ request.getParameter("id") +"' order by descriptor_name ";
myResultSet = dbBean.execSQL(mySQL);

%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    	<tr bgcolor="eeeeee"><td align="center">&nbsp;</td><td align="center"><b>ID</b></td><td align="center"><b>Name</b></td></tr>
	<%
while (myResultSet.next()){
%>
<tr bgcolor="#ffffff" valign="top">
		
    <td><a href="javascript:Update('<%= myResultSet.getString("descriptor_id") %>','<%= myResultSet.getString("descriptor_name") %>');"><img src="/cimande/images/right-arrow.gif" border="0"></a></td>
		<td>&nbsp;<% out.println(myResultSet.getString("descriptor_id")); %></td>
		<td>&nbsp;<% out.println(myResultSet.getString("descriptor_name")); %></td>
		</tr>
<%	}  %>
</table>

<script language="JavaScript"  version="1.2">
	function Update(var1,var2)
	{
		window.opener.document.frmForm.descriptor_id.value = var1; 
		window.opener.document.frmForm.descriptor_name.value = var2; 
		window.opener.document.frmForm.article_id.value = ""; 
		window.opener.document.frmForm.article_desc.value = ""; 
		window.close();
	}
</script>



<%@ include file="footer.jsp"%>