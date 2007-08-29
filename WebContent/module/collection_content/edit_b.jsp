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
DtCollection collection= null;
collection = (DtCollection)session.getAttribute("org.blueoxygen.cimande.collection.collect");
if (collection != null) 
	{

%>		
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#ffffff" valign="top" > 
<td bgcolor="#ffccff"><b>Collection
        </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top" > 
<td >
   <form name="frmForm" action="edit_detail.jsp?status=back" method="post">
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
        <input type="hidden" name="site_id" maxlength="28" size="28" value="<%= collection.getSiteId()%>">
		<input type="hidden" name="id" maxlength="28" size="28" value="<%= collection.getId()%>">
            <font color="blue"><b><%= collection.getId()%></b></font></td>
        </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"> Name:</div>
      </td>
      <td width="67%">
        <%= collection.getName() %><input type="hidden" name="name" maxlength="128" size="50" value="<%= collection.getName() %>">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div>
      </td>
      <td width="67%">
        <%= collection.getDescription() %><input type="hidden" name="description" maxlength="255" size="50" value="<%= collection.getDescription() %>"></td></tr>

		<tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"> Skin ID:</div>
      </td>
      <td width="67%">
        <%= collection.getSkinId() %>
		<input type="hidden" name="skin_id" maxlength="28" size="40" value="<%= collection.getSkinId() %>">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div>
      </td>
      <td width="67%">
        <%= collection.getSkinName() %>
		<input type="hidden" name="skin_name" maxlength="128" size="50" value="<%= collection.getSkinName() %>">
      </td>
    </tr>
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Active:
						</div></td><td>
		<%
		if (collection.getActiveFlag().equalsIgnoreCase("1"))
		{
		%>
		Yes
		<input name="active_flag" type="hidden" value="1">
		<%
		} else { if (collection.getActiveFlag().equalsIgnoreCase("0")) {
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
<% } else {
%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table></body></html>
<% } %>	
<%@ include file="footer.jsp" %>