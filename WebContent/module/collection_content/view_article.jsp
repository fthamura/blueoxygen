<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Select Article</title>
	<LINK href="style.css" type=text/css rel=stylesheet>
	
</head>

<body  bgcolor="lightyellow" leftmargin="0" topmargin="0">
<CENTER>
<table cellpadding="3" width="100%">
	<tr><td><br>
<%@ include file="/include/db.jsp" %>

<%
String coll_def = null;	
String temp=request.getParameter("dsname");
String temp1=request.getParameter("dsId");



mySQL = "select collection_default from descriptor where id='"+temp1+"'";
myResultSet1 = dbBean.execSQL(mySQL);
if (myResultSet1.next()) {
	coll_def = myResultSet1.getString("collection_default");
}


mySQL = "select * from "+temp+" where site_id='"+session.getAttribute("GS_USER")+"'";
myResultSet = dbBean.execSQL(mySQL);



%>

<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
</table><br> 
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    	<tr bgcolor="eeeeee"><td align="center">&nbsp;</td><td align="center"><b>id</b></td><td align="center"><b><%= coll_def %></b></td></tr>
	<%
while (myResultSet.next()){
%>
<tr bgcolor="#ffffff" valign="top">
		
    <td><a href="javascript:Update('<%= myResultSet.getString("id") %>','<%= myResultSet.getString(""+coll_def+"") %>');"><img src="/cimande/images/right-arrow.gif" width="21" height="21" border="0"></a></td>
		<td>&nbsp;<% out.println(myResultSet.getString("id")); %></td>
		<td>&nbsp;<% out.println(myResultSet.getString(""+coll_def+"")); %></td>
		</tr>
<%	}  %>
</table>

<script language="JavaScript">
<!--
	function Update(var1,var2)
	{
		window.opener.document.frmForm.article_id.value = var1; 
		window.opener.document.frmForm.article_desc.value = var2; 
		window.close();
	}
//-->
</script>
<%@ include file="footer.jsp"%>
