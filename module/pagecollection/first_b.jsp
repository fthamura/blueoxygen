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

	PageCollection pagecollection= null;
	pagecollection = (PageCollection)session.getAttribute("org.blueoxygen.cimande.pagecollection.pcollection");
	if (pagecollection != null) 
	{ 
%>
<br>
   <form name="frmfirst" action="act_first.jsp?code=add&status=back" method="post">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td bgcolor="#D0DCFF" colspan="3"><b>Create Page Collection
        </b></td>
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
        <input type="text" name="name" size="50" maxlength="128" value="<%= pagecollection.getName() %>">
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
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div>
      </td>
      <td width="67%">
        <input type="text" name="skin_name" maxlength="128" size="50" value="<%= pagecollection.getSkinName() %>">
        
      </td>
    </tr>
         <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Descriptor:</div>
      </td>
      <td width="67%">
        <select name="category">
		<% mySQL = "select id,description from descriptor where id='"+ pagecollection.getCategory() +"' order by description";
						   myResultSet = dbBean.execSQL(mySQL);
 						   if (myResultSet.next())
						   { %>
						<option value="<%= myResultSet.getString("id") %>"><%= myResultSet.getString("description") %></option>
						   <% }  %>
						<% mySQL = "select id,description from descriptor order by description";
						   myResultSet = dbBean.execSQL(mySQL);
 						   while (myResultSet.next())
						   { %>
						<option value="<%= myResultSet.getString("id") %>"><%= myResultSet.getString("description") %></option>
						   <% }  %>
  						</select></td></tr>
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
      <td align="right" width="25%">&nbsp;</td>
      <td colspan="2"><font color="ff0000">*</font> required<br>
        <div align="right"> 
          <input name="submit" onclick="return checkfields(this);" type="submit" value="next &gt;&gt;"></div>
      </td>
    </tr>
  </table>
</form>

<%
} else { out.println("Session Collection = null cannot generate Collection detail !!"); }
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
