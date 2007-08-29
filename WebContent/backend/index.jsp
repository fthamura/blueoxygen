<%@ include file="/include/global.inc.jsp" %>
<%
String sGA_USER;
sGA_USER=(String)session.getAttribute("GA_USER");

// if status is logged in
if (sGA_USER!=null) {

	// if site ID is selected	
	
	if (session.getAttribute("GS_USER")!=null) { 
		response.sendRedirect(sURI+"/backend/yuitree.action");
%>
<html>
<head>
<title>Cimande Project</title>
<script type="text/javascript">
<!-- hide the script from old browsesr

// This script is a part of:
// Morten's JavaScript Tree Menu
// version 2.3.0, dated 2001-04-30
// http://www.treemenu.com/

// Copyright (c) 2001, Morten Wang & contributors
// All rights reserved.

// This software is released under the BSD License which should accompany
// it in the file "COPYING".  If you do not have this file you can access
// the license through the WWW at http://www.treemenu.com/license.txt

var MTMUsableBrowser = false;
// browser sniffing routine
browserName = navigator.appName;
browserVersion = parseInt(navigator.appVersion);
if(browserName == "Netscape" && browserVersion >= 3) {
  MTMUsableBrowser = (navigator.userAgent.indexOf("Opera") == -1) ? true : false;
} else if(browserName == "Microsoft Internet Explorer" && browserVersion >= 4) {
  MTMUsableBrowser = true;
} else if(browserName == "Opera" && browserVersion >= 5) {
  MTMUsableBrowser = true;
}

// frameset creation
document.open("text/html", "replace");
document.write('</head>');
document.write('<frameset frameborder="0" framespacing="0" border="0" cols="*" rows="90,*,25">')
document.write('<frame marginwidth="0" marginheight="0" src="_branding.jsp?module=<%=request.getParameter("module")%>" name="heading" scrolling="no">');
document.write('<frameset frameborder="1" framespacing="0" border="1" cols="220,*" rows="*">');
if(MTMUsableBrowser) {
  document.write('<frameset frameborder="0" framespacing="0" border="1" cols="*" rows="0,*">')
  document.write('<frame marginwidth="0" marginheight="0" src="code.action" name="code" scrolling="yes" frameborder="1">');
  document.write('<frame marginwidth="5" marginheight="5" src="menu_empty.html" name="menu" scrolling="auto" frameborder="1">');
  document.write('</frameset>');
} else {
  document.write('<frame marginwidth="5" marginheight="5" src="menu.html" name="menu" scrolling="auto" frameborder="1">');
}

document.write('<frame marginwidth="5" marginheight="5" src="<%=sURI%>/backend/blank.jsp" name="text" >');
document.write('</frameset>');
document.write('<frame marginwidth="5" marginheight="5" src="<%=sURI%>/backend/status.jsp" name="power" scrolling="no">');
document.write('</frameset>');
document.write('</body>');
document.write('</html>');
document.close();


// End of script hiding -->
</script>
</head>
<body bgcolor="#000033" text="#ffffcc" link="yellow" vlink="lime" alink="red">
<h1>Heading</h1>

<p>This part will be shown to those who do not have JavaScript support in their browser, or have chosen to turn it off.  It's your own responsibility to give (or not give) useful content to such users).  This section is more or less like the <code>NOFRAMES</code> part of a regular frameset.</p>

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
