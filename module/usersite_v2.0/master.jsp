<%
UserSite usersite = null;
usersite = (UserSite)session.getAttribute("org.blueoxygen.cimande.usersite.usite");

if (usersite != null) 
	{

%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
        
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">ID:</div>
      </td>
      
    <td width="67%"><%= usersite.getID()%></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Login:</div>
      </td>
      
    <td width="67%"><%= usersite.getUsername()%></td>
    </tr>
</table>



<% } else { 
%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
        
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%" colspan="2"> 
        Session User login = null cannot generate user login detail !!
      </td>
    </tr>
   </table>

<%	
 }
%>