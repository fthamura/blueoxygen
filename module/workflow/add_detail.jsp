<form name="frmForm" method="post" action="act_wfroleSite.jsp?act=add&code=<%= code %>">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
	<tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Site ID:</div>
      </td>
      <td width="67%"> 
	    <input type="text" name="site_id" maxlength="28" size="40" readonly>
		<input type="button"  value="View Site" onclick="GoAddressSite();">
		<input type="hidden" name="detail_id"  size="28" value="<%= randomID.generate() %>">
		<input type="hidden" name="site_name" size="30" >
      </td>
      
    </tr>
    <tr bgcolor="#ffffff" valign="top">
    <td align="right" width="25%">&nbsp;</td>
    <td colspan="2"><font color="ff0000">*</font> required <br><div align="right"><input type="submit" value=" Add Site " onclick="ceksubmit(); return false;"></div></td></tr>
  </table>
</form>
