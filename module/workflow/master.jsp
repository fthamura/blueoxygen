<%
	Workflowrole workflowrole;
    workflowrole = (Workflowrole)session.getAttribute("org.blueoxygen.cimande.rolesite.wfrole");


if (workflowrole != null) 
	{

%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
        
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">ID:</div>
      </td>
      
    <td width="67%"><%= workflowrole.getID()%></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Work Flow Role Name:</div>
      </td>
      
    <td width="67%"><%= workflowrole.getWorkflowname()%></td>
    </tr>
	    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Work Flow Role Desc.:</div>
      </td>
      
    <td width="67%"><%= workflowrole.getWorkflowdesc()%></td>
    </tr>
</table>



<% } else { out.println("Session User login = null cannot generate user login detail !!"); }
%>