<form name="frmForm" method="post" action="actdescriptor_menu_ordered.jsp?act=<% out.println(act); %>&code=<% out.println(temp); %>">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">

    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Descriptor ID:</div>
      </td>
      <td width="67%"> 
      <%
      if (desc_id == null)
	{
      %>
       <input type="text" name="descriptor_id" maxlength="28" size="40" readonly>
      
      <% } else { %>
       <input type="text" name="descriptor_id" maxlength="28" size="40" value="<% out.println(desc_id); %>"  readonly>
      <% } %>
        
        <input type="button"  value="View Descriptor" onclick="GoAddressDescriptor();">
        <input type="hidden" name="detail_id" maxlength="28" size="28" value="<%= randomID.generate() %>">
      </td>
      
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Descriptor Name:</div>
      </td>
      <td width="67%">
      
      <%
      if (desc_name == null)
      {
      %>
        <input type="text" maxlength="128" name="descriptor_name" size="40" readonly>
      <% } else { %>
        <input type="text" maxlength="128" name="descriptor_name" size="40" value="<% out.println(desc_name); %>" readonly>
      <% } %>
        
        </td>
    </tr>
    
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
      <div align="right">Ordered By:</div>
		<td valign="top">
		<%
      		if (desc_name == null)
      		{
      		%>
			<select name="ordered_by" size>
			<option value=""></option>
			</select>
		<% } else { %>
			<select name="ordered_by" size>
			<% mySQL = "SHOW FIELDS FROM "+desc_name;
		 	myResultSet = dbBean.execSQL(mySQL);
 		 	while (myResultSet.next())
		 	{ %>
		  	<option value="<%= myResultSet.getString("field") %>"><%= myResultSet.getString("field") %></option>
		  	<% }  %>
  		 	</select>
  		 <% } %>
  		 </td></tr>	
  		 
      <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font>Limit:</div>
      </td>
      <td width="67%">
         <input type="text" maxlength="4" name="limit" size="2" value="1">
      </td>
    </tr>		
		
      
    <tr bgcolor="#ffffff" valign="top">
    <td align="right" width="25%">&nbsp;</td>
    <td colspan="2"><font color="ff0000">*</font> required <br><div align="right"><input type="submit" value=" Add Descriptor " onclick="ceksubmit(); return false;"></div></td></tr>
  </table>
</form>
