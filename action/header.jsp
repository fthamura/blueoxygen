<%@ include file="/include/global.inc.jsp" %>
<html><head>
<title><%=treebuilder.getTreeWalkerProperty("site.name")%></title>
	
</head>
<link href="<%=sURI%>/style.css" rel="stylesheet" type="text/css"/>
<body bgcolor="D0DCE0">
<%

if (session.getAttribute(treebuilder.getTreeWalkerProperty("session.user"))!=null) && session.getAttribute(treebuilder.getTreeWalkerProperty("session.site"))!=null) { 
%>