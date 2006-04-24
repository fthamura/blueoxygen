<%
String strid = request.getParameter("idn");
Iterator itr; 
ArrayList roleList = (ArrayList)session.getAttribute("role");
itr = roleList.iterator();
while (itr.hasNext()) {
	Map item = (Map) itr.next();
	if (strid.equalsIgnoreCase(item.get("id").toString())) {	
%>

<form name="frmForm" method="post" action="act_userrole.jsp?act=edit&idn=<%=item.get("id")%>&code=<%= code %>">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
     
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
	   <div align="right"><font color="ff0000"></font> Role Name:</div>
      </td>
      <td width="67%"><b><%=item.get("role_name") %></b>
        <input type="hidden" name="role_name" size="40" value="<%=item.get("role_name") %>">
        <input type="hidden" name="detail_id"  size="28" value="<%= item.get("id") %>">
		<input type="hidden" name="role_id" maxlength="28" size="30" value="<%= item.get("role_id") %>">
      </td></tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
	   <div align="right"><font color="ff0000">*</font> Set to Default:</div>
      </td>
      <td width="67%"><% if (roleList.indexOf(item)==0) { %>
      					<input name="default" type="radio" value="1" checked>Yes<br><input name="default" type="radio" value="0">No<br>
      				  <% } else { %>
      					<input name="default" type="radio" value="1" >Yes<br><input name="default" type="radio" value="0" checked>No<br>
      				  <% } %>
      </td></tr>
      
    <tr bgcolor="#ffffff" valign="top">
    <td align="right" width="25%">&nbsp;</td>
    <td><font color="ff0000">*</font> required<br><div align="right">
    <input type="submit" value=" Add Workflow Role " onclick="ceksubmit(); return false;"></div></td></tr>
  </table>
</form>


<%
}
}
%>