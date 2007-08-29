<%@ include file="/include/header_module.jsp"%>
<%@ include file="/include/db.jsp"%>


<%	
if (session.getAttribute("GA_USER")!=null) {
mySQL = "SELECT DISTINCT role_id from role_site WHERE site_id='"+request.getParameter("site_id")+"'";
%>
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td bgcolor="#D0DCFF" colspan="4"><b>Workflow Role List  
        </b></td>
    </tr>
	<tr bgcolor="eeeeee">
			
			<td align="center"><b>Name</b></td>
			<td align="center"><b>Description</b></td>
			
			<td align="center" colspan="2"><b>Role</b></td>
			
		</TR>
		
<%	
if ((request.getParameter("id")).equals("")) {
myResultSet = dbBean.execSQL(mySQL);
} else {
	mySQL = mySQL + request.getParameter("idCon") + " id like '"+request.getParameter("id")+"%' ";
	myResultSet = dbBean.execSQL(mySQL);
}

while (myResultSet.next()) {

mySQL = "Select name,description from workflow_role WHERE id='"+ myResultSet.getString("role_id")+"'";

if ((request.getParameter("name")).equals("")) {
} else {
	mySQL = mySQL + request.getParameter("nameCon") + " name like '"+request.getParameter("name")+"%' ";
}

if ((request.getParameter("description")).equals("")) {
} else {
	mySQL = mySQL + request.getParameter("descriptionCon") + " description like '"+request.getParameter("description")+"%' ";
}

mySQL = mySQL +"order by name ";
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
<% } else {
%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table>
<% } %>	
<%@ include file="/include/db_close.jsp"%>
<%@ include file="/include/footer_module.jsp" %>	