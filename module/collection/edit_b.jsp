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
CollectionData collection= null;
collection = (CollectionData)session.getAttribute("org.blueoxygen.cimande.collection.collect");
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
        <div align="right"><font color="ff0000">*</font> Name:</div>
      </td>
      <td width="67%">
        <input type="text" name="name" size="50" maxlength="128" value="<%= collection.getName() %>">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div>
      </td>
      <td width="67%">
        <textarea name="description" cols="50" ><%= collection.getDescription() %></textarea></td></tr>
		<tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Skin ID:</div>
      </td>
      <td width="67%">
        <input type="text" name="skin_id" maxlength="28" size="40" value="<%= collection.getSkinId() %>">
        <input type="button"  value="View Skin" onclick="GoAddressSkin();">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div>
      </td>
      <td width="67%">
        <input type="text" name="skin_name" maxlength="128" size="50" value="<%= collection.getSkinName() %>">
        
      </td>
    </tr>
    	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">status:</div></td><td>
    		<%
		if (collection.getStatus().equalsIgnoreCase("1"))
		{
		%>
		<input name="art_status" type="radio" value="0">Selected<br>
		<input name="art_status" type="radio" value="1" checked>Ordered<br>
		<%
		} else { if (collection.getStatus().equalsIgnoreCase("0")) {
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
		if (collection.getActiveFlag().equalsIgnoreCase("1"))
		{
		%>
		<input name="active_flag" type="radio" value="1" checked>Yes<br>
		<input name="active_flag" type="radio" value="0">No<br>
		<%
		} else { if (collection.getActiveFlag().equalsIgnoreCase("0")) {
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
<% } else {
%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table></body></html>
<% } %>	
<%@ include file="footer.jsp" %>