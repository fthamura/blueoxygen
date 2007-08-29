<%
	ModuleFunctionSite mfsite;
    mfsite = (ModuleFunctionSite)session.getAttribute("org.blueoxygen.cimande.rolesite.modulefunction");


if (mfsite != null) 
	{

%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
        
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">ID:</div>
      </td>
      
    <td width="67%"><%=mfsite.getID() %></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Site ID:</div>
      </td>
      
    <td width="67%"><%=mfsite.getSiteId() %></td>
    </tr>
	    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Site Name:</div>
      </td>
      
    <td width="67%"><%=mfsite.getSiteName() %></td>
    </tr>
</table>




<% } else { out.println("Session mfsite = null cannot generate madulefunction detail !!"); }

%>