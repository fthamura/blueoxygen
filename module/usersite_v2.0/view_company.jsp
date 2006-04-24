<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>View Company</title>
	<title>View Template</title>
	<LINK href="/cimande/style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="lightyellow" leftmargin="0" topmargin="0">
<CENTER>
<table cellpadding="3" width="100%">
	<tr><td><br>
<%@ include file="/include/db.jsp"%>


<%	

mySQL = "select * from company order by name";
myResultSet = dbBean.execSQL(mySQL);
%>

<br> 
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    	<tr bgcolor="eeeeee"><td align="center">&nbsp;</td><td align="center"><b>Name</b></td><td align="center"><b>Address</b></td></tr>
<%
while (myResultSet.next()){
%>
<tr bgcolor="#ffffff" valign="top">
		
    <td><a href="javascript:Update('<%= myResultSet.getString("id") %>','<%= myResultSet.getString("name") %>');"><img src="/cimande/images/right-arrow.gif" border="0"></a></td>
		<td><% out.println(myResultSet.getString("name")); %></td>
		<td><% out.println(myResultSet.getString("address")); %><br>
			<% out.println(myResultSet.getString("zip_number")); %>&nbsp;<% out.println(myResultSet.getString("state")); %><br>
			Telp.&nbsp;<% out.println(myResultSet.getString("telephone")); %><br>
			Fax.&nbsp;<% out.println(myResultSet.getString("faximile")); %><br>
			Website.&nbsp;<% out.println(myResultSet.getString("website")); %><br>
			Email.&nbsp;<% out.println(myResultSet.getString("email")); %></td>
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
		window.opener.document.backend_user.company_id.value = var1; 
		window.opener.document.backend_user.company_name.value = var2;
		window.close();
	}
//-->
</script>
