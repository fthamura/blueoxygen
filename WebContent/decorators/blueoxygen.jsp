<%@ include file="/include/global.inc.jsp" %>
<%@ taglib uri="sitemesh-decorator" prefix="decorator" %>
<%@ taglib uri="webwork" prefix="webwork" %>
<%
    String root = request.getContextPath();
    response.setHeader("Cache-Control", "none");
%>
<%
String sGA_USER;
sGA_USER=(String)session.getAttribute("GA_USER");

// if status is logged in
if (sGA_USER!=null) {

	// if site ID is selected	
	
	if (session.getAttribute("GS_USER")!=null) { 
	Site site = new Site((String)session.getAttribute("GS_USER"));

%>

<html>
<head>
    <title><decorator:title default="BlueOxygen" /></title>
     <decorator:head />
</head>
<LINK href="<%=sURI%>/style.css" type=text/css rel=stylesheet>

<body bgcolor="#336699" topmargin="1" leftmargin="1" marginheight="0" marginwidth="0">
<table width="100%" height="100%" bgcolor="#336699" border=0 cellspacing=0 cellpadding=0>
	<tr width="100% valign="top">
		<td ><a href="<%=sURI%>/backend/index.jsp" ><img src="<%=sURI%>/images/blueoxygen-logo.png" border="0" width="244"></a>
		</td>
		<td align="right">
			<font color="white"><b><%=loginBean.getFirstName()%> - <%=loginBean.getRoleName()%></b> (<b><font color="yellow"><%=site.getName()%></font></b>)
			<br>
			<br>
			<a href="<%=sURI%>/backend/user/change_site.jsp" ><font color="white"><b>Change Site</b></font></a>&nbsp;<font color="white">|</font>&nbsp;
			<a href="<%=sURI%>/backend/user/logout.jsp" ><font color="white"><b>Sign Out</b></font></a>&nbsp;
		</td>
		
	</tr>
	<tr width="100%"><td colspan="2"><b>
	&nbsp;&nbsp;<font color="white">HOME</font> | <a href="<%=sURI%>/backend" target="_parent" ><font color="white"><b>Workspace</b></font></a> | 
	</b>
	</td></tr>
	<tr width="100%" bgcolor="white"><td colspan="2" valign="top">
	<%@ include file="main_menu.jsp" %>
	<!-- end of main menu -->
	</td></tr>
	<tr width="100%"><td colspan="2">
		<table width="100%">
		<tr> 
			<td align="right">
			<p align="right"><font size="1" color="#FFFFFF"><b>Copyright </b>&copy; 2000-2004,
		    <b><font color="#FFFF00">BlueOxygen Technology. </font></b><font color="#FFFFFF"> All 
		    Right reserved.</font></font></p>
			</td>
		</tr>
		</table>
	</td></tr>
</table>
</body>
</html>
<%
		} else {
			response.sendRedirect(sURI+"/backend/user/site.jsp");
		}
		
      	} else {
		response.sendRedirect(sURI+"/backend/user/login.jsp");
      	}
%>
