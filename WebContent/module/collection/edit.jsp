<script language="JavaScript"  version="1.2">

function ceksubmit()
	{ 
		
		if (document.frmForm.name.value=="")
		{ alert("Name can not be blank.");
		  return false;
		}	
		if (document.frmForm.skin_id.value=="")
		{ alert("Skin ID can not be blank.");
		  return false;
		}
		else
		{ document.frmForm.submit();
		   }
	}
function GoAddressSkin()
	{
		window.open("view_skin.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}	
</script>	



<%@ include file="header.jsp" %>
<%@ include file="/include/db.jsp" %>
<%	
mySQL = "select * from collection where id='"+request.getParameter("id")+"'";
myResultSet = dbBean.execSQL(mySQL);
while (myResultSet.next()){
%>		
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#ffffff" valign="top" > 
<td bgcolor="#ffccff"><b>Collection
        </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top" > 
<td >
   <form name="frmForm" action="edit_detail.jsp" method="post">
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
        <input type="hidden" name="site_id" maxlength="28" size="28" value="<%= myResultSet.getString("site_id")%>"><input type="hidden" name="id" maxlength="28" size="28" value="<%= myResultSet.getString("id")%>">
            <font color="blue"><b><%= myResultSet.getString("id")%></b></font></td>
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
        <textarea name="description" cols="50" ><%= myResultSet.getString("description") %></textarea></td></tr>
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
        <input type="text" name="skin_name" maxlength="128" size="50" value="<%= myResultSet1.getString("name") %>" readonly>
		<%
		}
		else
		{
		%>
		<input type="text" name="skin_name" maxlength="128" size="50" value="null" readonly>
		<%
		}
		%>
      </td>
    </tr>	
    	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">status:</div></td><td>
    		<%
		if (myResultSet.getString("status").equalsIgnoreCase("1"))
		{
		%>
		<input name="art_status" type="radio" value="0">Selected<br>
		<input name="art_status" type="radio" value="1" checked>Ordered<br>
		<%
		} else { if (myResultSet.getString("status").equalsIgnoreCase("0")) {
		%>
		
		<input name="art_status" type="radio" value="0" checked>Selected<br>
		<input name="art_status" type="radio" value="1">Ordered<br>
		<%
		}
		}
		%>
	</td></tr>	
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
		
    <tr bgcolor="#ffffff" valign="top"><td align="right">&nbsp;</td>
	<td><font color="ff0000">*</font> required<br><div align="right"><input type="submit" value="Next &gt;&gt;" onclick="ceksubmit(); return false;"></form></td></tr>
</table></td></tr></table>
<%
}
%>
<%@ include file="footer.jsp" %>