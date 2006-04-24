<form name="frmForm" method="post" action="actcollection_menu.jsp?act=add&code=<%= temp %>">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">

    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Descriptor ID:</div>
      </td>
      <td width="67%"> 
        <input type="text" name="descriptor_id" maxlength="28" size="40" readonly>
        <input type="button"  value="View Descriptor" onclick="GoAddressDescriptor(document.frmForm.coll_id.value);">
        <input type="hidden" name="detail_id" maxlength="28" size="28" value="<%= randomID.generate() %>">
        <input type="hidden" name="coll_id" maxlength="28" size="28" value="<%= collection.getId()%>">
      </td>
      
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Descriptor Name:</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="128" name="descriptor_name" size="40" readonly>
        </td>
      
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Article ID:</div>
      </td>
      <td width="67%">
        <input type="text" name="article_id" maxlength="28" size="40" readonly>
        <input type="button" value="View Article" onclick="GoAddressArticle(document.frmForm.descriptor_name.value,document.frmForm.descriptor_id.value);">
      </td>
    </tr>
     <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Article Name :</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="128" name="article_desc"  size="40" readonly>
        </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top">
    <td align="right" width="25%">&nbsp;</td>
    <td colspan="2"><font color="ff0000">*</font> required <br><div align="right"><input type="submit" value=" Add Collection " onclick="ceksubmit(); return false;"></div></td></tr>
  </table>
</form>
