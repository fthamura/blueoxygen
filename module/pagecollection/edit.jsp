<script language="JavaScript">
<!--
function ceksubmit()
	{ 
		
		if (document.frmfirst.name.value=="")
		{ alert("Name can not be blank.");
		  return false;
		}	
		if (document.frmfirst.skin_id.value=="")
		{ alert("skin ID can not be blank.");
		  return false;
		}	
		if (document.frmfirst.category.value=="")
		{ alert("Descriptor ID can not be blank.");
		  return false;
		}	
		else
		{ document.frmfirst.submit();
		   }
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
mySQL = "select * from page_collection where id='"+request.getParameter("id")+"'";
myResultSet = dbBean.execSQL(mySQL);
while (myResultSet.next()){
%>		
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#ffffff" valign="top" > 
<td bgcolor="#ffccff"><b>Page Collection 
        </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top" > 
<td >
   <form name="frmfirst" action="edit_detail.jsp" method="post">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
  <tr bgcolor="#ffffff" valign="top" > 
<td bgcolor="#D0DCFF" colspan="2"><b>Edit Master
        </td>
    </tr>
      <tr bgcolor="#ffffff" valign="top">
      <td width="33%"> 
        <div align="right">ID:</div>
      </td>
      <td width="67%">
        <input type="hidden" name="site_id"  size="28" maxlength="28" value="<%= myResultSet.getString("site_id") %>">
        <input type="hidden" name="id"  size="28" maxlength="28" value="<%= myResultSet.getString("id") %>">
            <font color="blue"><b><%= myResultSet.getString("id") %></b></font></td>
        </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Name:</div>
      </td>
      <td width="67%">
        <input type="text" name="name" maxlength="128" size="50" value="<%= myResultSet.getString("name") %>">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div>
      </td>
      <td width="67%">
        <textarea name="description" maxlength="255" cols="50" ><%= myResultSet.getString("description") %></textarea>
      </td>
      
    </tr>
     <tr bgcolor="#ffffff" valign="top">
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Skin ID:</div>
      </td>
      <td width="67%">
        <input type="text" name="skin_id" maxlength="28" size="40" value="<%= myResultSet.getString("skin_id") %>" readonly>
        <input type="button"  value="View Skin" onclick="GoAddressSkin();">
      </td></tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div>
      </td>
      <td width="67%">
	   <%
	   mySQL = "select name from skin where id= '"+myResultSet.getString("skin_id")+"'";
	   	   myResultSet1 = dbBean.execSQL(mySQL);
	   if (myResultSet1.next())
	   {
	   %>
        <input type="text" maxlength="128" name="skin_name" size="50" value="<%= myResultSet1.getString("name") %>" readonly>
		<%
		}
		else
		{
		%>
		<input type="text" maxlength="128" name="skin_name" size="50" value="null" readonly>
		<%
		}
		%>
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font>Descriptor:</div>
      </td>
      <td width="67%">
		<select name="category">
		<% mySQL = "select id,description from descriptor where id='"+ myResultSet.getString("descriptor_id") +"' order by description";
						   myResultSet1 = dbBean.execSQL(mySQL);
 						   if (myResultSet1.next())
						   { %>
						<option value="<%= myResultSet1.getString("id") %>"><%= myResultSet1.getString("description") %></option>
						   <% } else { %>
						<option value=""></option>   
						   <% } %>
						<option value="">--------------------------------</option>     
						<% mySQL = "select id,description from descriptor order by description";
						   myResultSet1 = dbBean.execSQL(mySQL);
 						   while (myResultSet1.next())
						   { %>
						<option value="<%= myResultSet1.getString("id") %>"><%= myResultSet1.getString("description") %></option>
						   <% }  %>
  						</select></td>
      
    </tr>
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Active:
						</div></td><td>
		<%
		if (myResultSet.getString("active_flag").equalsIgnoreCase("1"))
		{
		%>
		<input name="active_flag" type="radio" value="1" checked>Yes<br>
		<input name="active_flag" type="radio" value="0">No<br>
		<%
		} else { if (myResultSet.getString("active_flag").equalsIgnoreCase("0")) {
		%>
		<input name="active_flag" type="radio" value="1" >Yes<br>
		<input name="active_flag" type="radio" value="0" checked>No<br>
		<%
		}
		}
		%>
	</td></tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td align="right">&nbsp;</td>
      <td>
      <font color="ff0000">*</font> required<br>
      <div align="right"> 
      <input type="submit" value="Next &gt;&gt;" onclick="ceksubmit(); return false;"></td>
      </tr></form>
</table>

</td></tr></table>
<%
}
%>
<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>
