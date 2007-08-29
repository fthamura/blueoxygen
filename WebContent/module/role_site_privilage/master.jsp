<%
	RoleSitePrivilage roleSitePrivilage;
    roleSitePrivilage = (RoleSitePrivilage)session.getAttribute("org.blueoxygen.cimande.rolesite.rsprivilage");


if (roleSitePrivilage != null) 
	{

%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
        
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Role ID:</div>
      </td>
      
    <td width="67%"><%= roleSitePrivilage.getRoleID()%></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Role Name:</div>
      </td>
      
    <td width="67%"><%= roleSitePrivilage.getRoleName()%></td>
    </tr>
	    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Site ID:</div>
      </td>
    <td width="67%"><%= roleSitePrivilage.getRSiteID()%></td>
    </tr>
	<tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Site Name:</div>
      </td>
    <td width="67%"><%= roleSitePrivilage.getRSiteName()%></td>
    </tr>
	
</table>



<% } else { 
%>
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
        
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%" colspan="2"> 
        Session Role Site Privilage = null cannot generate Role Site Privilage detail !!
      </td>
    </tr>
   </table>

<%	
 }
%>