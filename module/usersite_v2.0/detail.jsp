<%@ include file="/include/header_module.jsp"%>
<%@ include file="/include/db.jsp"%>
<%	
	String sTemp="";	
	String pass = null;
	StringUtils string = new StringUtils();
	mySQL = "select backend_user.*,company.name,job_position.name from backend_user,company,job_position where backend_user.id='"+request.getParameter("id")+"' and backend_user.company_id=company.id and backend_user.job_position_id=job_position.id";
	myResultSet = dbBean.execSQL(mySQL);
	while (myResultSet.next()){
	pass=string.decodeBase64(myResultSet.getString("backend_user.password"));
%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
	<tr bgcolor="#ffffff" valign="top"><td ><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
		<tr bgcolor="#ffffff" valign="top"><td bgcolor="#D0DCFF" colspan="3"><b>Backend_user</b></td></tr>
	
	    <tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">ID: 
						</div></td><td><font color="blue"><b><%=myResultSet.getString("backend_user.id") %></b></font>
						</td><td>&nbsp;</td></tr>
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">Login: 
						</div></td><td><%=myResultSet.getString("backend_user.username") %></td><td>&nbsp;</td></tr>
		
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">Password: 
						</div></td><td><%=pass %></td><td>&nbsp;</td></tr>
	
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">First Name: 
						</div></td><td><%=myResultSet.getString("backend_user.first_name") %></td><td>&nbsp;</td></tr>
	
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Last Name: 
						</div></td><td><%=myResultSet.getString("backend_user.last_name") %></td><td>&nbsp;</td></tr>
	
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Company: 
						</div></td><td><%=myResultSet.getString("company.name") %></td><td>&nbsp;</td></tr>
	
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Position: 
						</div></td><td><%=myResultSet.getString("job_position.name") %></td><td>&nbsp;</td></tr>
		
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Email: 
						</div></td><td><%=myResultSet.getString("backend_user.email") %></td><td>&nbsp;</td></tr>
	
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Address: 
						</div></td><td><%=myResultSet.getString("backend_user.address1") %></td><td>&nbsp;</td></tr>
	
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>: 
						</div></td><td><%=myResultSet.getString("backend_user.address2") %></td><td>&nbsp;</td></tr>
	
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>City: 
						</div></td><td><%=myResultSet.getString("backend_user.city") %></td><td>&nbsp;</td></tr>
		
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Description:
							</div></td><td valign="top"><%=myResultSet.getString("backend_user.description") %></td><td>&nbsp;</td></tr>
		
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Calendar:
							</div></td><td valign="top">
							<% if (myResultSet.getString("backend_user.calendar_flag").equalsIgnoreCase("1")){ %>
							Yes
							<% }else{ %>
							No
							<% } %>
							</td><td>&nbsp;</td></tr>
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Project:
							</div></td><td valign="top">
							<% if (myResultSet.getString("backend_user.project_flag").equalsIgnoreCase("1")){ %>
							Yes
							<% }else{ %>
							No
							<% } %>
							</td><td>&nbsp;</td></tr></table>
							
		<br><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
	    	<tr bgcolor="#ffffff" valign="top"><td bgcolor="#D0DCFF"><b> User Role Detail</b></td></tr>
	    	<tr bgcolor="#eeeeee"><td align="center"><b>Role Name</b></td></tr>
			<% 
			mySQL = "select workflow_role.name from user_role,workflow_role where user_role.user_id='"+myResultSet.getString("backend_user.id")+"' and user_role.site_id='"+myResultSet.getString("backend_user.site_id")+"' and user_role.role_id=workflow_role.id Order by user_role.default_role Desc";
			myResultSet1 = dbBean.execSQL(mySQL);
			int i=1;
			while (myResultSet1.next()){
				if (i==1) {
			%>
				<tr bgcolor="#ffffff" valign="top"><td><b><%=myResultSet1.getString("workflow_role.name") %>&nbsp[Default]</b></td></tr>
			<%  } else {  %>	
	      		<tr bgcolor="#ffffff" valign="top"><td><%=myResultSet1.getString("workflow_role.name") %></td></tr>
	       	<% 	} 
	       		i++;
	       	}  %>              
        </table>					
							
		<br><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
	    	<tr bgcolor="#ffffff" valign="top"><td bgcolor="#D0DCFF"><b> User Site Detail</b></td></tr>
	    	<tr bgcolor="#eeeeee"><td align="center" ><b>Site Name</b></td></tr>
			<% 
			mySQL = "select site.name from user_site,site where user_site.user_id='"+myResultSet.getString("backend_user.id")+"' and user_site.site_id='"+myResultSet.getString("backend_user.site_id")+"' and user_site.user_site_id = site.id";
			myResultSet1 = dbBean.execSQL(mySQL);
			while (myResultSet1.next()){
			%>
	      	<tr bgcolor="#ffffff" valign="top"><td><%=myResultSet1.getString("site.name") %></td></tr>
	       	<% } %>              
        </table>
        <br>
		<table width="100%"">
		<tr><form action="index.jsp?action=search"  method="post">
			<td  align="right"><input type="submit" value="&lt;&lt; Back" onclick="history.go(-1);">&nbsp<input type="submit" value="   OK   "></td>
		</tr></form>
		</table>
</td></tr></table>
<%
}
%>
<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>