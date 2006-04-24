<%
String strid = request.getParameter("idn");

Iterator itr; 
ArrayList arrList = (ArrayList)session.getAttribute("collect");
itr = arrList.iterator();
while (itr.hasNext()) {
	Map item = (Map) itr.next();
	if (strid.equalsIgnoreCase(item.get("id").toString())) {

%>

<form name="frmForm" method="post" action="actcollection_menu.jsp?idn=<%=item.get("id")%>&code=<%= temp %>">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
     
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Collection ID:</div>
      </td>
      <td width="67%"> 
        <input type="text" name="collection_id" maxlength="28" size="40" value="<%=item.get("collection_id") %>" readonly>
        <input type="button"  value="View Collection" onclick="GoAddressCollection();">
        <input type="hidden" maxlength="28" name="detail_id"  size="28" value="<%= item.get("id") %>">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Collection Name:</div>
      </td>
      <td width="67%">
        <input type="comment" maxlength="128" name="collection_name" size="40" value="<%=item.get("collection_name") %>" readonly>
        </td>
      
    </tr>
 
    
    <tr bgcolor="#ffffff" valign="top">
    <td align="right" width="25%">&nbsp;</td>
    <td><font color="ff0000">*</font> required<br><div align="right">
          
          <input type="submit" value=" Add Collection " onclick="ceksubmit(); return false;"></div></td></tr>
  </table>
</form>


<%
}
}
%>