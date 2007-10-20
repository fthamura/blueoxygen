<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>View Role</title>
	<LINK href="/cimande/style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="lightyellow" leftmargin="0" topmargin="0">
<CENTER>
<table cellpadding="3" width="100%">
	<tr><td><br>
<%@ include file="/include/db.jsp"%>
<%	
	mySQL = "select * from workflow_role order by name";
	myResultSet = dbBean.execSQL(mySQL);
%>
<br> 
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    	<tr bgcolor="eeeeee"><td align="center">&nbsp;</td><td align="center"><b>ID</b></td><td align="center"><b>Name</b></td></tr>
<%
while (myResultSet.next()){
%>
<tr bgcolor="#ffffff" valign="top">
		
    <td><a href="javascript:Update('<%= myResultSet.getString("id") %>','<%= myResultSet.getString("name") %>');"><img src="../../images/silk/application_put.png" border="0"></a></td>
		<td>&nbsp;<% out.println(myResultSet.getString("id")); %></td>
		<td>&nbsp;<% out.println(myResultSet.getString("name")); %></td>
		</tr>
<%	}  %>
</table>

<p align="center"><input TYPE="button" VALUE="Close Window" onClick="window.close();"></p>
<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp"%>



<script language="JavaScript">
<!--
	function Update(var1,var2)
	{
		window.opener.document.frmForm.role_id.value = var1; 
		window.opener.document.frmForm.role_name.value = var2; 
		window.close();
	}
//-->
</script>