<% 
PageCollection pagecollection= null;
pagecollection = (PageCollection)session.getAttribute("org.blueoxygen.cimande.pagecollection.pcollection");
if (pagecollection != null) 
	{ 
		%>

  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
        
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Name:</div>
      </td>
      
    <td width="67%"><%= pagecollection.getName() %></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div>
      </td>
      
    <td width="67%"><%= pagecollection.getDescription() %></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin ID:</div>
      </td>
      
    <td width="67%"><%= pagecollection.getSkinId() %></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div>
      </td>
      
    <td width="67%"><%= pagecollection.getSkinName() %></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Descriptor:</div>
      </td>
      
    <td width="67%">
	<%
	   mySQL = "select description from descriptor where id= '"+pagecollection.getCategory()+"'";
	   myResultSet1 = dbBean.execSQL(mySQL);
	   if (myResultSet1.next())
	   {
		out.println(myResultSet1.getString("description"));
		}
		else
		{
		out.println("null");
		}
		%>
		</td>
    </tr>
</table>



<% } else {
%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
        
    <tr bgcolor="#ffffff" valign="top"> 
      <td colspan="2">Session Page Collection = null cannot generate Page Collection detail !!
      </td>
    
    </tr>
    	
</table>
<%
}
%>