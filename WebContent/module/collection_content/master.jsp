<%
DtCollection collection= null;
collection = (DtCollection)session.getAttribute("org.blueoxygen.cimande.collection.collect");
if (collection != null) 
	{

%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
        
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Name:</div>
      </td>
      
    <td width="67%"><%= collection.getName()%></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div>
      </td>
    <td width="67%"><%= collection.getDescription()%></td>
    </tr>
		<tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin ID:</div>
      </td>
      <td width="67%"><%= collection.getSkinId() %>
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div>
      </td>
      <td width="67%"><%= collection.getSkinName() %>
      </td>
    </tr>	
</table>



<% } else { out.println("Session Collection = null cannot generate Collection detail !!"); }
%>