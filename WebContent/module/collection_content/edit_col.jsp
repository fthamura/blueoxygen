<%
String strid = request.getParameter("idn");
String counter = request.getParameter("c");

Iterator itr; 
ArrayList arrList = (ArrayList)session.getAttribute("varexist");
itr = arrList.iterator();
while (itr.hasNext()) {
	Map item = (Map) itr.next();
	if (strid.equalsIgnoreCase(item.get("id").toString())) {	
%>

<form name="frmForm" method="post" action="actcollection_menu.jsp?idn=<%=item.get("id")%>&code=<%= temp %>">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
     
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Descriptor ID:</div>
      </td>
      <td width="67%"> 
        <input type="text" name="descriptor_id" maxlength="28" size="40" value="<%=item.get("descriptor_id") %>" readonly>
        <input type="button"  value="View Descriptor" onclick="GoAddressDescriptor(document.frmForm.coll_id.value);">
        <input type="hidden" name="detail_id" maxlength="28" size="28" value="<%= item.get("id") %>">
        <input type="hidden" name="coll_id" maxlength="28" size="28" value="<%= collection.getId()%>">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Descriptor Name:</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="128" name="descriptor_name" size="40" value="<%=item.get("descriptor_name") %>" readonly>
        </td>
      
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Article:</div>
      </td>
      <td width="67%">
        <input type="text" name="article_id" maxlength="28" size="40" value="<%=item.get("article_id") %>" readonly>
        <input type="button" value="View Article" onclick="GoAddressArticle(document.frmForm.descriptor_name.value,document.frmForm.descriptor_id.value);">
        </td>
    </tr>
    </tr>
     <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Article Name:</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="128" name="article_desc" size="40" value="<%= item.get("article_desc") %>" readonly>
        </td>
      
    </tr>
     <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Rank:</div>
      </td>
      <td width="67%">
        <input type="comment" maxlength="10" name="rank" size="3" value="<%= counter %>">
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