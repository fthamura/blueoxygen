<form name="frmForm" method="post" action="act_userrole.jsp?act=add&code=<%= code %>">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">

    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Role ID:</div>
      </td>
      <td width="67%"> 
        <input type="text" name="role_name" size="40" readonly>
        <input type="button"  value="View Role" onclick="GoAddressrole();">
        <input type="hidden" name="detail_id"  size="28" value="<%= randomID.generate() %>">
		<input type="hidden" name="role_id" maxlength="28" size="30" >
      </td>
      
    </tr>
      
    </tr>
    <tr bgcolor="#ffffff" valign="top">
    <td align="right" width="25%">&nbsp;</td>
    <td colspan="2"><font color="ff0000">*</font> required <br><div align="right"><input type="submit" value=" Add Workflow Role " onclick="ceksubmit(); return false;"></div></td></tr>
  </table>
</form>
