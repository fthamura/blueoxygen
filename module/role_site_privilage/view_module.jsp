<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>View Module</title>
	<LINK href="/cimande/style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="lightyellow" leftmargin="0" topmargin="0">
<CENTER>
<table cellpadding="3" width="100%">
	<tr><td><br>
<%@ include file="/include/db.jsp"%>

<%	

mySQL = "SELECT * FROM module_function WHERE iparent='0' ORDER BY description";
myResultSet = dbBean.execSQL(mySQL);
%>


</table><br> 
  <table bgcolor="black" border="0" cellpadding="2" cellspacing="1" width="98%">
    	<tr bgcolor="eeeeee"><td align="center">&nbsp;</td><td align="center"><b>Description</b></td></tr>
	<%
while (myResultSet.next()){
%>
<tr bgcolor="#ffffff" valign="top">
		
    <td><a href="javascript:Update('<%= myResultSet.getString("id") %>','<%= myResultSet.getString("description") %>');"><img src="/cimande/images/right-arrow.gif" border="0"></a></td>
		<td>&nbsp;<% out.println(myResultSet.getString("description")); %></td>
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
		window.opener.document.frmForm.module_id.value = var1; 
		window.opener.document.frmForm.module_name.value = var2; 
		window.close();
	}
//-->
</script>



<%@ include file="/include/footer_module.jsp"%>