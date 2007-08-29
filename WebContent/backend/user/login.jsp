<%@ include file="/include/global.inc.jsp" %>
<html><head>
<title>BlueOxygen Cimande Workspace Framework</title>
	
</head>
<link href="<%=sURI%>/style.css" rel="stylesheet" type="text/css"/>
<body bgcolor="white">
<%
String sRedirectUri;
sRedirectUri = ""+request.getParameter("redirectUri");
if (sRedirectUri.equals("null")) { sRedirectUri=""; }

if (request.getParameter("login")!=null ) { 

  	// validate password and username
  		loginBean = new Login(""+request.getParameter("username"),""+request.getParameter("password"));
	  	bValidate = loginBean.validate();
	if (bValidate) {  
	/* login success   */
	 	session.setAttribute("GA_USER",loginBean.getHashCode());
	 	//refresh
				response.sendRedirect(sURI+"/backend/user/site.jsp?redirectUri="+sRedirectUri); 
       	}   else {
       	
       	/* if login failed */ 
       	
       	%>	
       
<form method="post" action="<%=sBackendLocation%>/user/login.jsp">
	<%@ include file="/backend/user/login_failed.html" %>
</form>     	
<%    
               	
       	}
} else {

	if (session.getAttribute("GA_USER")!=null) { 
		response.sendRedirect(sURI+"/backend/user/site.jsp"); 
		} else {
		
		/* default login menu */ 
	%>
	<form method="post" action="<%=sBackendLocation%>/user/login.jsp">
		<%@ include file="/backend/user/login.html" %>
		
	</form>	
	<% 
	}
}
%>

 </body>
</html>
