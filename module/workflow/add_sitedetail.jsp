<form name="frmForm" method="post" action="act_usersite.jsp?act=add&code=<%= code %>">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
	<tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Module Function ID:</div>
      </td>
      <td width="67%"> 
	    <input type="text" name="module_id" maxlength="28" size="40" readonly>
		<input type="button"  value="View Module Function" onclick="GoAddressModule();">
		<input type="hidden" name="detail_id"  size="28" value="<%= randomID.generate() %>">
		<input type="hidden" name="module_name" size="30" >
      </td>
      
    </tr>
    <tr bgcolor="#ffffff" valign="top">
    <td align="right" width="25%">&nbsp;</td>
    <td colspan="2"><font color="ff0000">*</font> required <br><div align="right"><input type="submit" value=" Add Module Function " onclick="ceksubmit(); return false;"></div></td></tr>
  </table>
</form>
