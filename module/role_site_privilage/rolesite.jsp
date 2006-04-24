<%	
mySQL = "SELECT DISTINCT role_id from role_site WHERE site_id='"+session.getAttribute("GS_USER")+"'";
myResultSet = dbBean.execSQL(mySQL);

%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td bgcolor="#D0DCFF" colspan="4"><b>Role Site List  
        </b></td>
    </tr>
	<tr bgcolor="eeeeee">
			
			<td align="center"><b>Name</b></td>
			<td align="center"><b>Description</b></td>
			
			<td align="center" colspan="2"><b>Status</b></td>
			
		</TR>
	

<%
while (myResultSet.next()){

mySQL = "Select name,description from workflow_role WHERE id='"+ myResultSet.getString("role_id")+"'";
myResultSet1 = dbBean.execSQL(mySQL);
while (myResultSet1.next()){
%>
	    <tr bgcolor="#ffffff" valign="top"> 

		<td><% out.println(myResultSet1.getString("name")); %></td>
		<td><% out.println(myResultSet1.getString("description")); %></td>
		
		
    <td align="center"> <a href="rolesite_next.jsp?role_id=<% out.println(myResultSet.getString("role_id")); %>&role_name=<% out.println(myResultSet1.getString("name")); %>&site_id=<%=session.getAttribute("GS_USER") %>&code=add"><font color="blue">View Role Site</font></a></td></tr>

<%
}
}

%>
</table>
<br>
<!----[ <a href="/">back</a> ]-->
</TD></tr>
</table>
