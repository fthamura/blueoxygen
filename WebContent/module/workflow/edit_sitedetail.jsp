<%
String strid = request.getParameter("idn");
Iterator iter; 
ArrayList siteList = (ArrayList)session.getAttribute("site");
iter = siteList.iterator();
while (iter.hasNext()) {
	Map siteitem = (Map) iter.next();
	if (strid.equalsIgnoreCase(siteitem.get("id").toString())) {	
%>

<form name="frmForm" method="post" action="act_usersite.jsp?idn=<%=siteitem.get("id")%>&code=<%= code %>">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
	   <div align="right"><font color="ff0000">*</font> Site ID:</div>
      </td>
      <td width="67%"> 
        <input type="text" name="module_id" maxlength="28" size="40" value="<%=siteitem.get("module_id") %>" readonly>
		<input type="button"  value="View Module Function" onclick="GoAddressModule();">
		<input type="hidden" name="detail_id"  size="28" value="<%= siteitem.get("id") %>">
		<input type="hidden" name="module_name" size="30" value="<%=siteitem.get("module_name") %>">
      </td></tr>
    <tr bgcolor="#ffffff" valign="top">
    <td align="right" width="25%">&nbsp;</td>
    <td><font color="ff0000">*</font> required<br><div align="right">
    <input type="submit" value=" Add Module Function " onclick="ceksubmit(); return false;"></div></td></tr>
  </table>
</form>


<%
}
}
%>