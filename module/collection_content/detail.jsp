<%@ include file="header.jsp" %>
<%@ include file="/include/db.jsp" %>
<%	
	String sTemp;
	sTemp="";
mySQL = "select * from collection where id='"+request.getParameter("id")+"'";
myResultSet = dbBean.execSQL(mySQL);
while (myResultSet.next()){
%>		
		


<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#ffffff" valign="top" > 
<td bgcolor="#ffccff" colspan="2"><b>Collection Detail
        </td>
    </tr> 
    <tr bgcolor="#ffffff" valign="top"> 
    <td  colspan="2">
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td bgcolor="#D0DCFF" colspan="3"><b>Master
        </b></td>
    </tr>
      <tr bgcolor="#ffffff" valign="top">
      <td width="33%"> 
        <div align="right">ID :</div>
      </td>
      
    <td width="67%"> <%= myResultSet.getString("id") %></td>
  </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Name :</div>
      </td>
      
    <td width="67%"> <%= myResultSet.getString("name") %></td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Description :</div>
      </td>
   <td width="67%"> <%= myResultSet.getString("description") %></td>
    </tr>
		<tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin ID:</div>
      </td>
      <td width="67%"><%= myResultSet.getString("skin_id")  %>
      </td>
    </tr>
    <tr bgcolor="#ffffff" valign="top"> 
      <td width="33%"> 
        <div align="right">Skin Name:</div>
      </td>
      <td width="67%">
	  <%
	   mySQL = "select name from skin where id= '"+myResultSet.getString("skin_id")+"'";
	   myResultSet1 = dbBean.execSQL(mySQL);
	   if (myResultSet1.next())
	   {
		out.println(myResultSet1.getString("name"));
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
	<tr bgcolor="eeeeee"><td align="center" ><b>Descriptor ID</b></td><td align="center" ><b>Descriptor Name</b></td><td align="center" ><b>Article ID</b></td><td align="center" ><b>Article Name</b></td></tr>
	
<% 
mySQL = "select * from collection_detail where collection_id='"+request.getParameter("id")+"'";
myResultSet = dbBean.execSQL(mySQL);
while (myResultSet.next()){
	
%>	
      
	
      	<tr bgcolor="#ffffff" valign="top"><td >
        <%= myResultSet.getString("descriptor_id") %>
        </td>
        <td >
        <%= myResultSet.getString("descriptor_name") %>
        </td>
        <td >
        <%= myResultSet.getString("article_id") %>
        </td>
        <td >
        <%= myResultSet.getString("article_desc") %>
        </td></tr>
        
<% } %>              
        
<table width="100%"">
<tr>
	<form action="first.jsp?action=search"  method="post">
	<td  align="right"><input type="button" value="&lt;&lt; Back" onclick="history.go(-1);">
	<input type="submit" value="   OK   ">
	</td>
</tr></form>
</table></td></tr></table>
<%

 
}
%>