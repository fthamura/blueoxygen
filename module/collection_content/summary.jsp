<% 
String temp=request.getParameter("code");
DtCollection collection= null;
collection = (DtCollection)session.getAttribute("org.blueoxygen.cimande.collection.collect");
if (collection != null) 
	{ 
		%>
		
<%@ include file="header.jsp" %>
<%@ include file="/include/db.jsp" %>

<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#ffffff" valign="top" > 
<td bgcolor="#ffccff" colspan="2"><b>Collection Summary
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
          <td width="67%"> <%= collection.getId() %></td>
        </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Name:</div>
      </td>
          <td width="67%"> <%= collection.getName() %></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description:</div>
      </td>
          <td width="67%"> <%= collection.getDescription() %></td>
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
</table><br>

      <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#D0DCFF" colspan="11"><b>Detail 
        </b></td>
        </tr>
	<!--ada statusnya      <tr bgcolor="eeeeee"><td align="center"><b>Product Code</b></td><td align="center"><b>Product Category</b></td><td align="center"><b>Product Name</b></td><td align="center"><b>Product Desc.</b></td><td align="center"><b>Quantity</b></td><td align="center"><b>UOM</b></td><td align="center"><b>Price /unit</b></td><td align="center"><b>Total Price</b></td><td align="center"><b>Status</b></td><td colspan="2" align="center"><b>Action</b></td></tr> --->
	<tr bgcolor="eeeeee"><td align="center" ><b>Rank</b></td><td align="center" ><b>Descriptor ID</b></td><td align="center" ><b>Descriptor Name</b></td><td align="center" ><b>Article ID</b></td><td align="center" ><b>Article Name</b></td></tr>
<%


Iterator i ;


ArrayList arrList = (ArrayList) session.getAttribute("varexist");

if (arrList != null) {
	i = arrList.iterator();
	int counter = 1; 
	while (i.hasNext()) {
		Map item = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		out.println("<td>" + counter + "</td>");
    		out.println("<td>" + item.get("descriptor_id") + "</td>");
    		out.println("<td>" + item.get("descriptor_name") + "</td>");
    		out.println("<td>" + item.get("article_id") + "</td>");
    		out.println("<td>" + item.get("article_desc") + "</td>");
		
		out.println("</tr>"); 
		counter++ ;
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