<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>
<%	

mySQL = "select rsite_id,id from role_site where role_id='"+request.getParameter("id")+"' and site_id='"+ request.getParameter("site")+"'";
			myResultSet = dbBean.execSQL(mySQL);

while (myResultSet.next()){
%>		
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Role Site</b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
<table bgcolor="black" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr bgcolor="#ffffff" valign="top"><td><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%"><tr bgcolor="#ffffff" valign="top"><td bgcolor="#D0DCFF" colspan="3"><b>Master</td></tr>

    <tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Role ID: 
					</div></td><td><font color="blue"><b><%= myResultSet.getString("role_id")%></b></font>
					</td><td>&nbsp;</td></tr>
				
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">Name: 
					</div></td><td><%= workflowrole.getWorkflowname()%></td><td>&nbsp;</td></tr>
	
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right">Description: 
					</div></td><td><%= workflowrole.getWorkflowdesc()%></td><td>&nbsp;</td></tr>
	</table>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee"><b> Role Site
        </b></td>
        </tr>
	
<% 
mySQL = "select * from user_site where user_id='"+myResultSet.getString("id")+"' and site_id='"+myResultSet.getString("site_id")+"'";
myResultSet = dbBean.execSQL(mySQL);
while (myResultSet.next()){
	
%>	
      
	
      	<tr bgcolor="#ffffff" valign="top"><td >
        <%= myResultSet.getString("user_site_id") %>
        </td>
		<td >
		<% 
			mySQL = "select name from site where id='"+myResultSet.getString("user_site_id")+"'";
			myResultSet1 = dbBean.execSQL(mySQL);
			if (myResultSet1.next()){
			out.println(myResultSet1.getString("name"));
			} 
			%>
        </td></tr>
        
<% } %>              
        
<table width="100%"">
<tr>
	<form action="search.jsp"  method="post">
	<td  align="right"><input type="submit" value="&lt;&lt; Back" onclick="history.go(-1);">
	<input type="submit" value="   OK   ">
	</td>
</tr></form>
</table></td></tr></table>
<%

 
}
%>