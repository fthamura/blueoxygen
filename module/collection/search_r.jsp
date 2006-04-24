<%@ include file="header.jsp"%>
<%@ include file="/include/db.jsp" %>

<%	
if (session.getAttribute("GA_USER")!=null) {
mySQL = "SELECT * from collection WHERE site_id='"+request.getParameter("site_id")+"'";

if ((request.getParameter("id")).equals("")) {
} else {
	mySQL = mySQL + request.getParameter("idCon") + " id like '%"+request.getParameter("id")+"%' ";
}

if ((request.getParameter("name")).equals("")) {
} else {
	mySQL = mySQL + request.getParameter("nameCon") + " name like '%"+request.getParameter("name")+"%' ";
}

if ((request.getParameter("description")).equals("")) {
} else {
	mySQL = mySQL + request.getParameter("descriptionCon") + " description like '%"+request.getParameter("description")+"%' ";
}
if ((request.getParameter("skin_id")).equals("")) {
} else {
	mySQL = mySQL + request.getParameter("SkinIdCon") + " skin_id like '%"+request.getParameter("skin_id")+"%' ";
}
if (request.getParameter("art_status")==null) {
} else {
	mySQL = mySQL + request.getParameter("ArtStatusCon") + " status like '%"+request.getParameter("art_status")+"%' ";
}
if (request.getParameter("active_flag")== null) {
} else {
	mySQL = mySQL + request.getParameter("ActiveCon") + " active_flag like '%"+request.getParameter("active_flag")+"%' ";
}
mySQL = mySQL +"order by name ";
myResultSet = dbBean.execSQL(mySQL);

%>

<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td bgcolor="#D0DCFF" colspan="6"><b>Search Result  
        </b></td>
    </tr>
	<tr bgcolor="eeeeee">
			
			<td align="center"><b>Name</b></td>
			<td align="center"><b>Description</b></td>
			<td align="center" colspan="3"><b>Option</b></td>
			
		</TR>
	

<%
while (myResultSet.next()){
%>
	    <tr bgcolor="#ffffff" valign="top"> 

		<td><% out.println(myResultSet.getString("name")); %></td>
		<td><% out.println(myResultSet.getString("description")); %></td>
		
		
    <td align="center"> <a href="detail.jsp?id=<% out.println(myResultSet.getString("id")); %>"><font color="blue">Detail</font></a></td>
    <td align="center"> <a href="edit.jsp?id=<% out.println(myResultSet.getString("id")); %>"><font color="blue">Edit</font></a></td>
    <td align="center"> <a href="delete.jsp?id=<% out.println(myResultSet.getString("id")); %>"><font color="blue">Delete</font></a></td>

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