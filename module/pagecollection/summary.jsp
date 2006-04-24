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
<td bgcolor="#ffccff" colspan="2"><b>Page Collection Summary
        </td>
    </tr> 
    <tr bgcolor="#ffffff" valign="top"> 
    <td  colspan="2">
   <form action="save_collection.jsp?code=<%= temp %>" method="post" >
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td bgcolor="#D0DCFF" colspan="3"><b>Master
        </b></td>
    </tr>
      <tr bgcolor="#ffffff" valign="top">
      <td width="33%"> 
        <div align="right">ID:</div>
      </td>
      <td width="67%"><%= pagecollection.getId() %></td></tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Name:</div>
      </td>
      <td width="67%"><%= pagecollection.getName() %></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div></td>
      <td width="67%"><%= pagecollection.getDescription() %></td>
    </tr>
    </tr>
      <tr bgcolor="#ffffff" valign="top">
      <td width="33%"> 
        <div align="right">Skin ID:</div></td>
      <td width="67%"><%= pagecollection.getSkinId() %></td></tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div></td>
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
</table><br>

      <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#D0DCFF" colspan="10"><b>Detail 
        </b></td>
        </tr>
	<!--ada statusnya      <tr bgcolor="eeeeee"><td align="center"><b>Product Code</b></td><td align="center"><b>Product Category</b></td><td align="center"><b>Product Name</b></td><td align="center"><b>Product Desc.</b></td><td align="center"><b>Quantity</b></td><td align="center"><b>UOM</b></td><td align="center"><b>Price /unit</b></td><td align="center"><b>Total Price</b></td><td align="center"><b>Status</b></td><td colspan="2" align="center"><b>Action</b></td></tr> --->
	<tr bgcolor="eeeeee"><td align="center" width="50%"><b>ID</b></td><td align="center" ><b>Name</b></td></tr>
<%


Iterator i ;


ArrayList arrList = (ArrayList) session.getAttribute("collect");

if (arrList != null) {
	i = arrList.iterator(); 
	while (i.hasNext()) {
		Map item = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		
    		out.println("<td>" + item.get("collection_id") + "</td>");
    		out.println("<td>" + item.get("collection_name") + "</td>");
    		
		
		out.println("</tr>"); 
	}       	 	
}
%>    
</table><br>
     <table bgcolor="black" border="0" cellpadding="0" cellspacing="0" width="100%">
     <tr bgcolor="#ffffff" valign="top"> 
    
      <td align="right"><input type="button" value="&lt;&lt; Back" onclick="history.go(-1);">&nbsp;<input name="submit"  type="submit" value=" Save ">
      </td>
    </tr>
</table>

</td></tr></form></table>
<%

} else { out.println("Session Collection = null cannot generate Collection detail !!"); }
%>
<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>
