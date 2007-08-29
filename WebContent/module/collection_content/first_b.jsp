<script language="JavaScript" version="1.2">
function checkfields(obj)
		{    
				
    			if (obj.form.elements['name'].value=="") {
       				alert("Name cannot be blank!!");
       				return false;
    			} 					
				    // obj.form.submit();
			    	return true;
			}
</script>
<%
if (session.getAttribute("GA_USER")!=null) {
 if (request.getParameter("action")==null || (request.getParameter("action").equalsIgnoreCase("new"))) { 
%>
<%@ include file="header.jsp" %>
<%@ include file="/include/db.jsp" %>
<%
DtCollection collection= null;
collection = (DtCollection)session.getAttribute("org.blueoxygen.cimande.collection.collect");
if (collection != null) 
	{

%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
   <form action="act_first.jsp?code=add&status=back" method="post">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td bgcolor="#D0DCFF" colspan="3"><b>Create Collection
        </b></td>
    </tr>
      <tr bgcolor="#ffffff" valign="top">
      <td width="33%"> 
        <div align="right">ID:</div>
      </td>
      <td width="67%">
        <input type="hidden" name="site_id" maxlength="28"  size="28" value="<%= collection.getSiteId()%>">
        <input type="hidden" name="id" maxlength="28"  size="28" value="<%= collection.getId()%>">
        <font color="blue"><b><%= collection.getId()%></b></font></td></tr>
    <tr bgcolor="#ffffff" valign="top"><td width="33%"> 
        <div align="right"><font color="ff0000">*</font> Name:</div></td>
      <td width="67%"><input type="text" name="name" maxlength="128" size="50" value="<%= collection.getName()%>"></td></tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div></td>
      <td width="67%">
        <textarea name="description" cols="50" ><%= collection.getDescription()%></textarea></td></tr>
        <div align="right"><font color="ff0000">*</font> Skin ID:</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="28"  name="skin_id" size="40" value="<%= collection.getSkinId() %>">
        <input type="button"  value="View Skin" onclick="GoAddressSkin();">
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div>
      </td>
      <td width="67%">
        <input type="text" maxlength="128" name="skin_name" size="50" value="<%= collection.getSkinName() %>">
        
      </td>
    </tr>
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
    <tr bgcolor="#ffffff" valign="top"> 
      <td align="right" width="25%">&nbsp;</td>
      <td colspan="2"><font color="ff0000">*</font> required<br>
        <div align="right">
        
        <input name="submit" onclick="return checkfields(this);" type="submit" value="Next &gt; &gt;">
        </div></td></tr></table>
</form>

<% } else { out.println("Session Collection = null cannot generate Collection detail !!"); }
%>

<%@ include file="footer.jsp" %>
<%
} else { if (request.getParameter("action").equalsIgnoreCase("search")) { %>
<%@ include file="search.jsp" %>

<%
}
}
%>
<% } else {
%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table></body></html>
<% } %>	
