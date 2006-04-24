<%
	Workflowrole workflowrole;
    workflowrole = (Workflowrole)session.getAttribute("org.blueoxygen.cimande.rolesite.wfrole");


if (workflowrole != null) 
	{

%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
        
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Role ID:</div>
      </td>
      
    <td width="67%"><%= workflowrole.getID()%></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Name:</div>
      </td>
      
    <td width="67%"><%= workflowrole.getWorkflowname()%></td>
    </tr>
	    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div>
      </td>
      
    <td width="67%"><%= workflowrole.getWorkflowdesc()%></td>
    </tr>
</table>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee"><b> Role Site
        </b></td>
        </tr>
<%
Iterator j ;
ArrayList siteList = (ArrayList) session.getAttribute("slist");
x=1;
if (siteList != null) {
	j = siteList.iterator(); 
	while (j.hasNext()) {
		Map siteitem = (Map) j.next();
    		out.println("<tr bgcolor=ffffff>");
			out.println("<td width=\"40%\">" + x + ". "+ siteitem.get("site_name") + "</td>");
			x++;
%>
</td></tr>
<%
}
}
%>		
</table>
<br>		


<% } else { out.println("Session Workflow Role = null cannot generate Workflow Role detail !!"); }
%>