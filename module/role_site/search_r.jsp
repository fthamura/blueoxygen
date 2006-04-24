<%@ include file="header.jsp"%>
<%@ include file="db.jsp"%>
<%	
if (session.getAttribute("GA_USER")!=null) {
mySQL = "SELECT * from workflow_role  ";

if ((request.getParameter("id")).equals("")) {
} else {
	mySQL = mySQL + request.getParameter("idCon") + " id like '"+request.getParameter("id")+"%' ";
}

if ((request.getParameter("name")).equals("")) {
} else {
	mySQL = mySQL + request.getParameter("nameCon") + " name like '"+request.getParameter("name")+"%' ";
}

if ((request.getParameter("description")).equals("")) {
} else {
	mySQL = mySQL + request.getParameter("descriptionCon") + " description like '"+request.getParameter("description")+"%' ";
}
mySQL = mySQL +"order by name ";
myResultSet = dbBean.execSQL(mySQL);

%>

<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td bgcolor="#D0DCFF" colspan="4"><b>Role Manager List  
        </b></td>
    </tr>
	<tr bgcolor="eeeeee">
			
			<td align="center"><b>Name</b></td>
			<td align="center"><b>Description</b></td>
			
			<td align="center" colspan="2"><b>Role Site</b></td>
			
		</TR>
	

<%
while (myResultSet.next()){
%>
	    <tr bgcolor="#ffffff" valign="top"> 

		<td><% out.println(myResultSet.getString("name")); %></td>
		<td><% out.println(myResultSet.getString("description")); %></td>
		
		
<td align="center"> <a href="act_index.jsp?id=<% out.println(myResultSet.getString("id")); %>&site=<% out.println(myResultSet.getString("site_id")); %>&workflow_name=<% out.println(myResultSet.getString("name")); %> &workflow_desc=<% out.println(myResultSet.getString("description")); %>&code=del"><font color="blue">Delete</font></a></td>
<td align="center"> <a href="act_index.jsp?id=<% out.println(myResultSet.getString("id")); %>&site=<% out.println(myResultSet.getString("site_id")); %>&workflow_name=<% out.println(myResultSet.getString("name")); %> &workflow_desc=<% out.println(myResultSet.getString("description")); %>&code=add"><font color="blue">Add</font></a></td>
</tr>
<%
}

%>
</table>
<br>
<!----[ <a href="/">back</a> ]-->
</TD></tr>
</table>
<%@ include file="footer.jsp" %>

<% } else {
%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table></body></html>
<% } %>	