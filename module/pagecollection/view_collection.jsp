<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>View Collection</title>
	<LINK href="/cimande/style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="lightyellow" leftmargin="0" topmargin="0">
<CENTER>
<table cellpadding="3" width="100%">
	<tr><td><br>
<%@ include file="/include/db.jsp"%>

<%	
String sConvtype;
mySQL = "select * from collection where site_id='"+session.getAttribute("GS_USER")+"' order by id";
myResultSet = dbBean.execSQL(mySQL);

%>
<br> 
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    	<tr bgcolor="eeeeee"><td align="center" width="10%">&nbsp;</td><td align="center"><b>Description</b></td><td align="center"><b>Name</b></td></tr>
	<%
while (myResultSet.next()){
%>
<tr bgcolor="#ffffff" valign="top">
		
    <td align="center" width="10%"><a href="javascript:Update('<%= myResultSet.getString("id") %>','<%= myResultSet.getString("name") %>');"><img src="/cimande/images/right-arrow.gif" border="0"></a></td>
		<td>&nbsp;<% out.println(myResultSet.getString("description")); %></td>
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
		window.opener.document.frmForm.collection_id.value = var1; 
		window.opener.document.frmForm.collection_name.value = var2; 
		
		window.close();
	}
//-->
</script>
