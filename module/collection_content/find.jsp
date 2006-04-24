<%@ include file="header.jsp"%>


<%	

mySQL = "SELECT * from collection  WHERE site_id='"+session.getAttribute("GS_USER")+"' AND status='0' order by name";
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
		
		
    <td align="center"> <a href="detail.jsp?id=<% out.println(myResultSet.getString("id")); %>"><font color="blue">View Content</font></a></td>
    <td align="center"> <a href="edit.jsp?id=<% out.println(myResultSet.getString("id")); %>"><font color="blue">Add Content</font></a></td>
    <td align="center"> <a href="delete.jsp?id=<% out.println(myResultSet.getString("id")); %>"><font color="blue">Delete Content</font></a></td>

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

