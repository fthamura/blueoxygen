<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>View Descriptor</title>
	<LINK href="style.css" type=text/css rel=stylesheet>
	
</head>

<body  bgcolor="lightyellow" leftmargin="0" topmargin="0">
<CENTER>
<table cellpadding="3" width="100%">
	<tr><td><br>
<%@ include file="/include/db.jsp" %>

<%
String temp=request.getParameter("code");	
String act=request.getParameter("act");
String strid = null;
boolean bEdt = false;

if (act.equalsIgnoreCase("edit"))
{
	strid = request.getParameter("idn");
	bEdt = true;
	out.println(strid);
}	
	
mySQL = "select * from descriptor where active_flag=1 order by name";
myResultSet = dbBean.execSQL(mySQL);

out.println(temp);
out.println("-------");
out.println(act);

%>

<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
</table><br> 
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    	<tr bgcolor="eeeeee"><td align="center">&nbsp;</td><td align="center"><b>ID</b></td><td align="center"><b>Name</b></td><td align="center"><b>Description</b></td></tr>
	<%
while (myResultSet.next()){
%>
<tr bgcolor="#ffffff" valign="top">
		
    <td><a href="descriptor_menu_ordered.jsp?desc_id=<% out.println(myResultSet.getString("id")); %>&desc_name=<% out.println(myResultSet.getString("name")); %>&code=<% out.println(temp); %>&act=<% out.println(act); %>&idn=<% out.println(strid); %>&sEdt=<% out.println(bEdt); %>" onclick="window.close();" target="text"><img src="/cimande/images/right-arrow.gif" border="0"></a></td>
		<td>&nbsp;<% out.println(myResultSet.getString("id")); %></td>
		<td>&nbsp;<% out.println(myResultSet.getString("name")); %></td>
		<td>&nbsp;<% out.println(myResultSet.getString("description")); %></td>
		</tr>
<%	}  %>
</table>

<%@ include file="footer.jsp"%>