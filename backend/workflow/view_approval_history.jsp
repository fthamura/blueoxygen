<%@ include file="/include/global.inc.jsp" %>
<%
//initializing
String sTable=request.getParameter("table");
String sID=request.getParameter("id");
String sStatus="";


%>
<html>
	<head>
	<title>Workflow Status - <%=sTable%>:<%=sID%></title>
	</head>
	<link href="/cimande/style.css" rel="stylesheet" type="text/css"/><body bgcolor="lightyellow">
	<h4>Workflow Status and Approval History</h4>
<b><br>History:</b>  
			<table bgcolor="#dcdcdc" border="1" cellpadding="3" cellspacing="1" width="100%">
			  <tr bgcolor="D0DCE0" valign="top"> 
			    <td> 
			      <div align="right"><b>No.</b></div>
			    </td>
			    <td> <b><font color="black">Date: </font></b> </td>
			    <td><b>User</b></td>
			    <td><b>Status</b></td>
			    <td><b>Comment</b></td>
			  </tr>
			
			<%
			
			int x;
			x=0;
				mySQL="SELECT workflow_action.description AS wf_action, backend_user.first_name as first_name, workflow_history.comment from workflow_history, backend_user, workflow_action WHERE workflow_history.create_by=backend_user.id AND workflow_history.wf_action_id=workflow_action.code AND workflow_history.descriptor_table_name='"+sTable+"' AND workflow_history.descriptor_table_id='"+sID+"' ORDER BY workflow_history.create_date";
				myResultSet=dbBean.execSQL(mySQL); 
				
				while (myResultSet.next())
					{
						x++;
						%>
			  			<tr bgcolor="#ffffff" valign="top"> 
						    <td> 
						      <div align="right"><%=x%></div>
						    </td>
						    <td> 10 Feb 2001 </td>
						    <td valign="top"><b><%=myResultSet.getString("first_name")%></b></td>
						    <td><%=myResultSet.getString("wf_action")%></td>
						    <td><%=myResultSet.getString("comment")%></td>
						  </tr>
						
						<%
					} 
					%>
  
			</table>
			<p>&nbsp;</p>
			<div align="right"><a href="/cimande/detail.html" target="_blank" onMouseDown="window.close()">Close</a>&#160;&#160;&#160;</div>
	</body></html>
