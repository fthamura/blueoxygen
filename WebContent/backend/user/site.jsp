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

String sGA_USER, sGS_USER, sGAM_USER;
sGA_USER=loginBean.getMemberId();
sGS_USER=(String)session.getAttribute("GS_USER");
sGAM_USER=(String)session.getAttribute("GAM_USER");
mySQL = "SELECT site.id, site.name, site.description from site, user_site WHERE user_site.user_id='"+sGA_USER+"' AND site.id=user_site.user_site_id ORDER BY site.name";

// mySQL = "SELECT site.id, site.name, site.description FROM site, role_site WHERE role_site.role_id='"+loginBean.getRoleId()+"' AND site.id=role_site.rsite_id ORDER BY site.name";
// check if the user validation is oke
if (!sGA_USER.equals(null)) { 
	
	if ((request.getParameter("submit")!=null) && (request.getParameter("site_id")!=null)) {
		
		// set User's Global Site 
		session.setAttribute("GS_USER",request.getParameter("site_id"));
			//refresh
	 	  if (!sRedirectUri.equals("")) { 
			response.sendRedirect(sRedirectUri);
		} else {
			response.sendRedirect(sURI+"/backend/");
		}

	} else if ((request.getParameter("site_id")!=null)) {
	%>
	
		<form name="form1" method="post" action="">
		 <% if (!sRedirectUri.equals("")) { %>
		<input type="hidden" name="redirectUri" value="<%=request.getParameter("redirectUri")%>">
		<%} %>
	  <table border=0 cellpadding=0 cellspacing=0>
	    <tr> 
	      <td><img border=0 height=50 
	      src="../../images/empty.gif" width=150></td>
	      <td></td>
	    </tr>
	    <tr> 
	      <td></td>
	      <td> 
	        <table border=0 cellpadding=0 cellspacing=5 width="279">
	          <tr> 
	            <td colspan=2><img border=0 
	            src="../../images/e-business-suite.gif"></td>
	          </tr>
	          <tr> 
	            <td colspan=2><img border=0 height=5 
	            src="../../images/empty.gif" 
	        width=1></td>
	          </tr>
	          <tr> 
	            <td colspan="2">
	            <font color="blue">
	            Name: <b><%=loginBean.getFirstName()%></b><br/>
	            Role: <b><%=loginBean.getRoleName()%></b><br/>
	            Site: <b><%=request.getParameter("site_id")%></b><br/>
	            GA: <b><%=session.getAttribute("GA_USER")%></b><br/>
	            GS: <b><%=session.getAttribute("GS_USER")%></b><br/>
	            </font>
	            </td>
	          </tr>
	          
	          
	          <tr> 
	            <td colspan="2"><b>Site Selection:</b></td>
	          </tr>
	          <% 
	          
	          myResultSet=dbBean.execSQL(mySQL);
	          while (myResultSet.next()) {
	          	%>
	          <tr> 
	            <td width="134" valign="top"> 
	              <input type="radio" name="site_id" value="<%=myResultSet.getString("id")%>" >
	            </td>
	            <td width="233" nowrap><b> <%=myResultSet.getString("name")%></b><br>
	            <%=myResultSet.getString("description")%>
	             </td>
	          </tr>
	          	
	          	<%
	        	}
	          %>
	          <tr> 
	            <td width="134">&nbsp;</td>
	            <td width="233"> 
	              <div align="right"> 
	              <input type="hidden" name="redirectUri" value="<%=request.getParameter("redirectUri")%>">
	                <input type="submit" name="submit" value="Submit">
	                <input type="reset" name="reset" value="Reset">
	                <br><br>
	              	<a href="logout.jsp"><b>Change User</b></a><br>
	              </div>
	            </td>
	          </tr>
	        </table>
	      </td>
	    </tr>
	  </table>
	</form>
	<%
	} else {
%>

	<form name="form1" method="post" action="">
	<% if (!sRedirectUri.equals("")) { %>
		<input type="hidden" name="redirectUri" value="<%=request.getParameter("redirectUri")%>">
		<%} %>
	  <table border=0 cellpadding=0 cellspacing=0>
	    <tr> 
	      <td><img border=0 height=50 
	      src="../../images/empty.gif" width=150></td>
	      <td></td>
	    </tr>
	    <tr> 
	      <td></td>
	      <td> 
	        <table border=0 cellpadding=0 cellspacing=5 width="279">
	          <tr> 
	            <td colspan=2><img border=0 
	            src="../../images/e-business-suite.gif"></td>
	          </tr>
	          <tr> 
	            <td colspan=2><img border=0 height=5 
	            src="../../images/empty.gif" 
	        width=1></td>
	          </tr>
	          <tr> 
	            <td colspan="2">
	            <font color="blue">
	            Name: <b><%=loginBean.getFirstName()%></b><br/>
	            Role: <b><%=loginBean.getRoleName()%></b><br/>
	            </font>
	            </td>
	          </tr>
	          
	          
	          <tr> 
	            <td colspan="2"><b>Site Selection:</b></td>
	          </tr>
	          <% 
	          myResultSet=dbBean.execSQL(mySQL);
	          while (myResultSet.next()) {
	          	%>
	          <tr> 
	            <td width="134" valign="top"> 
	              <input type="radio" name="site_id" value="<%=myResultSet.getString("id")%>" >
	            </td>
	            <td width="233" nowrap><b> <%=myResultSet.getString("name")%></b><br>
	            <%=myResultSet.getString("description")%>
	             </td>
	          </tr>
	          	
	          	<%
	        	}
	          %>
	          <tr> 
	            <td width="134" ></td>
	            <td width="233"> 
	            
	              <div align="right"> 
	                <input type="submit" name="submit" value="Submit">
	                <input type="reset" name="reset" value="Reset">
	                <br><br>
	              	<a href="logout.jsp"><b>Change User</b></a><br>
	              </div>
	              
	            </td>
	          </tr>
	        </table>
	        
	      </td>
	    </tr>
	  </table>
	</form>
	
<% 	}

} else { 
	response.sendRedirect(sURI+"/backend/yuitree.action"); 
}
%>

</body>
</html>
