<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>View Site</title>
	<LINK href="style.css" type=text/css rel=stylesheet>
	
</head>

<body  bgcolor="lightyellow" leftmargin="0" topmargin="0">
<CENTER>
<table cellpadding="3" width="100%">
	<tr><td><br>
<%@ include file="db.jsp"%>

<%	

mySQL = "select * from site order by name";
myResultSet = dbBean.execSQL(mySQL);
%>

<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
</table><br> 
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    	<tr bgcolor="eeeeee"><td align="center">&nbsp;</td><td align="center"><b>ID</b></td><td align="center"><b>Name</b></td></tr>
	<%
while (myResultSet.next()){
%>
<tr bgcolor="#ffffff" valign="top">
		
    <td><a href="javascript:Update('<%= myResultSet.getString("id") %>','<%= myResultSet.getString("name") %>');"><img src="/cimande/images/right-arrow.gif" border="0"></a></td>
		<td>&nbsp;<% out.println(myResultSet.getString("id")); %></td>
		<td>&nbsp;<% out.println(myResultSet.getString("name")); %></td>
		</tr>
<%	}  %>
</table>

<script language="JavaScript">
<!--
	function Update(var1,var2)
	{
		window.opener.document.frmForm.site_id.value = var1; 
		window.opener.document.frmForm.site_name.value = var2; 
		window.close();
	}
//-->
</script>



<%@ include file="footer.jsp"%>