<%@ include file="/include/header_module.jsp"%>
<%@ include file="/include/db.jsp"%>

<%	
		String code = request.getParameter("code");
		String back = request.getParameter("back");
		//String sId = request.getParameter("id"); 
		String sSiteId = request.getParameter("site_id"); 
		String sRoleId = request.getParameter("role_id");
		String sRoleName = request.getParameter("role_name");
		
mySQL = "SELECT id,rsite_id from role_site WHERE role_id='"+sRoleId+"' and site_id='"+sSiteId+"'";
myResultSet = dbBean.execSQL(mySQL);

%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td bgcolor="#D0DCFF" colspan="4"><b>Site List 
        </b></td>
    </tr>
	<tr bgcolor="eeeeee">
			
			<td align="center"><b>Name</b></td>
			<td align="center"><b>Description</b></td>
			
			<td align="center" colspan="2"><b>Status</b></td>
			
		</TR>
	

<%
while (myResultSet.next()){

mySQL = "Select name,description from site WHERE id='"+ myResultSet.getString("rsite_id")+"'";
myResultSet1 = dbBean.execSQL(mySQL);
while (myResultSet1.next()){
%>
	    <tr bgcolor="#ffffff" valign="top"> 

		<td><% out.println(myResultSet1.getString("name")); %></td>
		<td><% out.println(myResultSet1.getString("description")); %></td>
		
		
    <td align="center"> <a href="act_index.jsp?role_id=<% out.println(myResultSet.getString("id")); %>&role_name=<% out.println(sRoleName); %>&site_id=<% out.println(sSiteId);  %>&rsite_id=<% out.println(myResultSet.getString("rsite_id"));  %>&rsite_name=<% out.println(myResultSet1.getString("name"));  %>&code=add"><font color="blue">Add Privilage</font></a></td></tr>

<%
}
}
%>
</table>
<br>
<!----[ <a href="/">back</a> ]-->
</TD></tr>
</table>
<%@ include file="/include/db_close.jsp"%>
<%@ include file="/include/footer_module.jsp" %>