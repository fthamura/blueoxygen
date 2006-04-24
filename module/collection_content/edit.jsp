<script language="JavaScript"  version="1.2">

function ceksubmit()
	{ 
		
		if (document.frmForm.name.value=="")
		{ alert("Name can not be blank.");
		  return false;
		}	
		else
		{ document.frmForm.submit();
		   }
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
<td bgcolor="#D0DCFF" colspan="2"><b>Master
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
        <div align="right"> Name:</div>
      </td>
      <td width="67%">
        <%= myResultSet.getString("name") %><input type="hidden" maxlength="128" name="name" size="50" value="<%= myResultSet.getString("name") %>">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div>
      </td>
      <td width="67%"><%= myResultSet.getString("description") %><input type="hidden" maxlength="255" name="description" size="50" value="<%= myResultSet.getString("description") %>"></td></tr>
     <tr bgcolor="#ffffff" valign="top">
      <td width="33%"> 
        <div align="right">Skin ID:</div>
      </td>
      <td width="67%"><%= myResultSet.getString("skin_id") %>
        <input type="hidden" name="skin_id" size="40" maxlength="28" value="<%= myResultSet.getString("skin_id") %>">
        
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
	    <%= myResultSet1.getString("name") %>
        <input type="hidden" name="skin_name" maxlength="128" size="50" value="<%= myResultSet1.getString("name") %>">
		<%
		}
		else
		{
		%>
		null
		<input type="hidden" name="skin_name" maxlength="128" size="50" value="null">
		<%
		}
		%>
      </td>
    </tr>
		<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Active:
						</div></td><td>
		<%
		if (myResultSet.getString("active_flag").equalsIgnoreCase("1"))
		{
		%>
		Yes
		<input name="active_flag" type="hidden" value="1">
		<%
		} else { if (myResultSet.getString("active_flag").equalsIgnoreCase("0")) {
		%>
		No
		<input name="active_flag" type="hidden" value="0">
		<%
		}
		}
		%>
	</td></tr>

    <tr bgcolor="#ffffff" valign="top"><td align="right">&nbsp;</td>
	<td><div align="right"><input type="submit" value="Next &gt;&gt;" onclick="ceksubmit(); return false;"></form></td></tr>
</table></td></tr></table>
<%
}
%>
<%@ include file="footer.jsp" %>