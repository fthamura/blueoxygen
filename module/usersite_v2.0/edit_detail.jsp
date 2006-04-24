<%
String strid = request.getParameter("idn");
Iterator itr; 
ArrayList arrList = (ArrayList)session.getAttribute("varexist");
itr = arrList.iterator();
while (itr.hasNext()) {
	Map item = (Map) itr.next();
	if (strid.equalsIgnoreCase(item.get("id").toString())) {	
%>

<form name="frmForm" method="post" action="act_usersite.jsp?act=edit&idn=<%=item.get("id")%>&code=<%= code %>">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
     
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
	   <div align="right"><font color="ff0000">*</font> Site ID:</div>
      </td>
      <td width="67%"> 
        <input type="text" name="site_name"  size="40" value="<%=item.get("site_name") %>" readonly>
        <input type="button"  value="View Site" onclick="GoAddresssite();">
        <input type="hidden" name="detail_id"  size="28" value="<%= item.get("id") %>">
		<input type="hidden" name="site_id" maxlength="28" size="30" value="<%= item.get("site_id") %>">
      </td></tr>
    <tr bgcolor="#ffffff" valign="top">
    <td align="right" width="25%">&nbsp;</td>
    <td><font color="ff0000">*</font> required<br><div align="right">
    <input type="submit" value=" Add User Site " onclick="ceksubmit(); return false;"></div></td></tr>
  </table>
</form>


<%
}
}
%>