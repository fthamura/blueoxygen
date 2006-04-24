<%@ include file="/include/header_module.jsp" %>
<%@ include file="/include/db.jsp" %>

<%
if (session.getAttribute("GA_USER")!=null) {
	String code = request.getParameter("code");
	UserSite usersite = null;
	usersite = (UserSite)session.getAttribute("org.blueoxygen.cimande.usersite.usite");
	if (usersite != null) {
%>

	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Activated.</td></tr></table>
	<br><form action="save.jsp?code=<%= code%>" method="post" >
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
		<tr bgcolor="#ffffff" valign="top"><td ><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%"><tr bgcolor="#ffffff" valign="top"><td bgcolor="#D0DCFF" colspan="3"><b>new - backend_user<input name="table" type="hidden" value="backend_user"><input name="action" type="hidden" value="new"></b></td></tr>
	
		    <tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>ID: 
							</div></td><td><font color="blue"><b><%=usersite.getID() %></b></font>
							</td><td>&nbsp;</td></tr>
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Login: 
							</div></td><td><%=usersite.getUsername() %></td><td>&nbsp;</td></tr>
			
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Password: 
							</div></td><td><%=usersite.getPassword() %></td><td>&nbsp;</td></tr>
		
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>First Name: 
							</div></td><td><%=usersite.getFirstName() %></td><td>&nbsp;</td></tr>
		
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Last Name: 
							</div></td><td><%=usersite.getLastName() %></td><td>&nbsp;</td></tr>
		
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Company: 
							</div></td><td><%=usersite.getCompanyName() %></td><td>&nbsp;</td></tr>
		
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Position: 
							</div></td><td><%=usersite.getPositionName() %></td><td>&nbsp;</td></tr>
			
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Email: 
							</div></td><td><%=usersite.getEmail() %></td><td>&nbsp;</td></tr>
		
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Address: 
							</div></td><td><%=usersite.getAddress1() %></td><td>&nbsp;</td></tr>
		
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>: 
							</div></td><td><%=usersite.getAddress2() %></td><td>&nbsp;</td></tr>
		
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>City: 
							</div></td><td><%=usersite.getCity() %></td><td>&nbsp;</td></tr>
		
			
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Description:
								</div></td><td valign="top"><%=usersite.getDescription() %></td><td>&nbsp;</td></tr>
		
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Calendar:
								</div></td><td>
				<% if (usersite.getCal().equalsIgnoreCase("1"))	{ 	%>
				Yes<br>
				
				<% } else { if (usersite.getCal().equalsIgnoreCase("0")) {	%>
				No<br>
				<%		}
					}	%>
			</td><td>&nbsp;</td></tr>
			
			<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Active:
								</div></td><td>
				<%
				if (usersite.getActiveFlag().equalsIgnoreCase("1"))
				{
				%>
				Yes<br>
				
				<%
				} else { if (usersite.getActiveFlag().equalsIgnoreCase("0")) {
				%>
				No<br>
				<%
				}
				}
				%>
			</td><td>&nbsp;</td></tr></table>
		<br>
		<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
	    	<tr bgcolor="#ffffff" valign="top"><td bgcolor="#D0DCFF"><b> User Role Detail</b></td></tr> 
			<tr bgcolor="#eeeeee"><td align="center" ><b>Role Name</b></td></tr>
			<%
			
			Iterator i ;
			ArrayList roleList = (ArrayList) session.getAttribute("role");
			int j=1;
			
			if (roleList != null) {
				i = roleList.iterator(); 
				while (i.hasNext()) {
					Map item = (Map) i.next();
			    		out.println("<tr bgcolor=ffffff>");	
						if (j==1) {										
				    		out.println("<td><b>" + item.get("role_name")  + "&nbsp[default]</b></td>");
						} else {		
				    		out.println("<td>" + item.get("role_name") + "</td></tr>");
						}		
				   j++;
				   }   
			}
			%>
		</table><br>
		<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    		<tr bgcolor="#ffffff" valign="top"><td bgcolor="#D0DCFF"><b> User Site Detail</b></td></tr> 
    		<tr bgcolor="#eeeeee"><td align="center" ><b>Site Name</b></td></tr>
			<%
			ArrayList arrList = (ArrayList) session.getAttribute("varexist");
			if (arrList != null) {
				i = arrList.iterator(); 
				while (i.hasNext()) {
					Map item = (Map) i.next();
			    		out.println("<tr bgcolor=ffffff>");
						out.println("<td>" + item.get("site_name") + "</td></tr>");		
				   }	   
			}
			%>
		</table><br>
	     <table bgcolor="black" border="0" cellpadding="0" cellspacing="0" width="100%">
	     <tr bgcolor="#ffffff" valign="top"> 
	      <td align="right"><input type="button" value="&lt;&lt; Back" onclick="history.go(-1);">&nbsp;<input name="submit"  type="submit" value=" Save ">
	      </td>
	   	 </tr>
		</table>
</td></tr></table></form>

<%
		} else { out.println("Session User login = null cannot generate user login detail !!"); }
	} else {
%>

<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table>
<% 	} 
%>
<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>