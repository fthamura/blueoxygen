<script language="JavaScript">
<!--
function ceksubmit()
	{ 
		
		if (document.frmfirst.name.value=="")
		{ alert("Name can not be blank.");
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
String temp=request.getParameter("code");
PageCollection pagecollection= null;
pagecollection = (PageCollection)session.getAttribute("org.blueoxygen.cimande.pagecollection.pcollection");
if (pagecollection != null) 
	{ 
%>	
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#ffffff" valign="top" > 
<td bgcolor="#ffccff"><b>Page Collection
        </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top" > 
<td >
   <form name="frmfirst" action="edit_detail.jsp?status=back" method="post">
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
        <input type="hidden" name="site_id" maxlength="28" size="28" value="<%= pagecollection.getSiteId() %>">
        <input type="hidden" name="id" maxlength="28" size="28" value="<%= pagecollection.getId() %>">
            <font color="blue"><b><%= pagecollection.getId() %></b></font></td>
        </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Name:</div>
      </td>
      <td width="67%">
        <input type="text" name="name" maxlength="128" size="50" value="<%= pagecollection.getName() %>">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div>
      </td>
      <td width="67%">
        <textarea name="description" cols="50" ><%= pagecollection.getDescription() %></textarea>
      </td>
      
    </tr>
          <tr bgcolor="#ffffff" valign="top">
      <td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Skin ID:</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="28" name="skin_id" size="40" value="<%= pagecollection.getSkinId() %>">
        <input type="button"  value="View Skin" onclick="GoAddressSkin();">
      </td></tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="128"  name="skin_name" size="50" value="<%= pagecollection.getSkinName() %>">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Category:</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="128" name="category" size="50" value="<%= pagecollection.getCategory() %>">
      </td>
      
    </tr>
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Active:
						</div></td><td>
		<%
		if (pagecollection.getActiveFlag().equalsIgnoreCase("1"))
		{
		%>
		<input name="active_flag" type="radio" value="1" checked>Yes<br>
		<input name="active_flag" type="radio" value="0">No<br>
		<%
		} else { if (pagecollection.getActiveFlag().equalsIgnoreCase("0")) {
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
      <input type="submit" value="Next &gt;&gt;" onclick="ceksubmit(); return false;"></form></td>
	  </tr></table></td></tr></table>
<%
}
%>
<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>