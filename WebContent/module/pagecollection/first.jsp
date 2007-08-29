<script language="JavaScript" version="1.2">
<!--
function checkfields(obj)
		{    
				
    			if (obj.form.elements['name'].value=="") {
       				alert("Name cannot be blank!!");
       				return false;
    			} 
    			if (obj.form.elements['skin_id'].value=="") {
       				alert("Skin ID cannot be blank!!");
       				return false;
    			} 	
    			if (obj.form.elements['category'].value=="") {
       				alert("Descriptor ID cannot be blank!!");
       				return false;
    			} 					
				    // obj.form.submit();
			    	return true;
			}
function GoAddressSkin()
	{
		window.open("view_skin.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}		
-->			
</script>
<%@ include file="/include/header_module.jsp" %>
<%@ include file="/include/db.jsp" %>
<%
if (session.getAttribute("GA_USER")!=null) {
 if (request.getParameter("action")==null || (request.getParameter("action").equalsIgnoreCase("new"))) { 
 	
	%>
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    <tr bgcolor="#ffffff" valign="top"><form name="frmfirst" action="act_first.jsp?code=add" method="post">
      <td bgcolor="#D0DCFF" colspan="3"><b>Create Page Collection
        </b></td>
    </tr>
      <tr bgcolor="#ffffff" valign="top">
      <td width="33%"> 
        <div align="right">ID:</div>
      </td>
      <td width="67%">
        <input type="hidden" name="site_id" maxlength="28" size="28" value="<%= session.getAttribute("GS_USER") %>">
        <input type="hidden" name="id" maxlength="28" size="28" value="<%= randomID.generate() %>">
        <font color="blue"><b><%= randomID.generate() %></b></font></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
	
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Name:</div>
      </td>
      <td width="67%">
        <input type="text" name="name" maxlength="128" size="50">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div>
      </td>
      <td width="67%">
        <textarea name="description" maxlength="255" cols="50" ></textarea>
      </td>
    </tr>
     <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Skin ID:</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="28" name="skin_id" size="40" readonly>
        <input type="button"  value="View Skin" onclick="GoAddressSkin();">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="128" name="skin_name" size="50" readonly>
 
      </td>
    </tr>
         <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font>Descriptor:</div>
		<td valign="top"><select name="category" size>
		<option value="">&nbsp;</option>
		<option value="">--------------------------------</option>
		<% mySQL = "select id,description from descriptor order by description";
						   myResultSet = dbBean.execSQL(mySQL);
 						   while (myResultSet.next())
						   { %>
						<option value="<%= myResultSet.getString("id") %>"><%= myResultSet.getString("description") %></option>
						   <% }  %>
  						</select></td></tr>

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Active:
						</div></td><td>
		<input name="active_flag" type="radio" value="1" checked>Yes<br>
		<input name="active_flag" type="radio" value="0">No<br>
	</td></tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td align="right" width="25%">&nbsp;</td>
      <td colspan="2"><font color="ff0000">*</font> required<br>
        <div align="right"> 
          
          <input name="submit" onclick="return checkfields(this);" type="submit" value="next &gt;&gt;"></div>
      </td>
    </tr>
  </table>
</form>
<%
} else { if (request.getParameter("action").equalsIgnoreCase("search")) { %>
<%@ include file="search.jsp" %>

<%
}
}
%>

<% } else {
%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table>
<% } %>	
<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>
