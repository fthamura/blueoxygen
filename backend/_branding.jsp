<%@ include file="/include/global.inc.jsp" %>
<html>
<head>
</head>
<title>Blue Oxygen Top</title>
<LINK href="<%=sURI%>/style.css" type=text/css rel=stylesheet>
<body bgcolor="#336699" topmargin="1" leftmargin="1" marginheight="0" marginwidth="0" background="<%=sURI%>/images/blue1x1.png">
<table width="100%"><tr><td><a href="<%=sURI%>/backend/index.jsp" target="_parent"><img src="<%=sURI%>/images/blueoxygen-logo.png" border="0" width="244"></a>
	<%
	String sGA_USER;
	sGA_USER=(String)session.getAttribute("GA_USER");
	
	if (sGA_USER!=null) {
	Site site = new Site((String)session.getAttribute("GS_USER"));
	%>
		</font><BR></td><td align=right>
		<font color="white"><b><%=loginBean.getFirstName()%> - <%=loginBean.getRoleName()%></b> (<b><font color="yellow"><%=site.getName()%></font></b>)
		<br><br>
		<a href="<%=sURI%>/backend/user/change_site.jsp" target="_parent" ><font color="white"><b>Change Site</b></font></a>&nbsp;<font color="white">|</font>&nbsp;
		<a href="<%=sURI%>/backend/user/logout.jsp" target="_parent" ><font color="white"><b>Sign Out</b></font></a>
	<%
	} else {
	%>	</td><td align=right>
		<font color="white"><b>Your are not Logged In!</b></font><BR>
		<br><a href="<%=sURI%>/backend/user/login.jsp" target="_parent" ><font color="white"><b>Sign In</b></font></a>
	<% } %>
</td></tr>
<tr><td><b>
&nbsp;&nbsp;<a href="<%=sURI%>/insurance" target="_parent" ><font color="white"><b>Home</b></font></a> | <font color="white">Workspace</font>
</b>
</td></tr>
<tr>
<td>
&nbsp;&nbsp;<font color="white">Site</font></a> : 

<% 
		  mySQL = "SELECT site.id, site.name, site.description from site, user_site WHERE user_site.user_id='"+loginBean.getMemberId()+"' AND site.id=user_site.user_site_id ORDER BY site.name";	          
		  System.out.println("mySQL"+mySQL);
	          myResultSet=dbBean.execSQL(mySQL);
	          while (myResultSet.next()) {
	          	%> 
	          <a target="_parent" href="<%=sURI%>/backend/user/site.jsp?site_id=<%=myResultSet.getString("id")%>&submit=submit"><font color="yellow"><%=myResultSet.getString("name")%></font></a>&nbsp;&nbsp;
	          	<%
	        	}
	          %>
</td></tr>

</table>
</body>
</head>
</html>