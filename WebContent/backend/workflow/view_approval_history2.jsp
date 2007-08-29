<%@ include file="/include/global.inc.jsp" %>
<%
//initializing
String sTable=request.getParameter("table");
String sID=request.getParameter("id");
String sStatus="";

String sSubmit=""+request.getParameter("submit");

%>
<html>
	<head>
	<title>Workflow Status - <%=sTable%>:<%=sID%></title>
	</head>
	<link href="/cimande/style.css" rel="stylesheet" type="text/css"/><body bgcolor="lightyellow">
	<h4>Workflow Status and Approval History</h4>
<%

	mySQL="SELECT status_id FROM "+sTable + " WHERE id='"+sID+"'";
	myResultSet=dbBean.execSQL(mySQL); 

	while (myResultSet.next())
		{
			sStatus=myResultSet.getString("status_id");
		}

	out.println(sStatus);
%>	
	<table bgcolor="#dcdcdc" border="1" cellpadding="3" cellspacing="1" width="100%">
	  <tr bgcolor="D0DCE0" valign="top"> 
	    <td> 
	      <div align="right"><b>No.</b></div>
	    </td>
	    <td> 
	      <b><font color="black">Date: </font></b>
	    </td>
	    <td><b>User</b></td>
	    <td><b>Status</b></td>
	    <td><b>Notes</b></td>
	  </tr>
	  <tr bgcolor="#ffffff" valign="top"> 
	    <td> 
	      <div align="right">1.</div>
	    </td>
	    <td> 
	      10 Feb 2001
	    </td>
	    <td valign="top"><b>Frans Thamura</b></td>
	    <td>Approve</td>
	    <td>Good Article</td>
	  </tr>
	  <tr bgcolor="yellow" valign="top"> 
	    <td> 
	      <div align="right">2.</div>
	    </td>
	    <td> 
	      10 Feb 2001
	    </td>
	    <td><b>Dony</b></td>
	    <td>Wait for Approval</td>
	    <td>&#160;</td>
	  </tr>
	</table>
	
<%
if (sSubmit.equals("Submit"))
{
	out.println("saved");
	out.println("Status:"+request.getParameter("status"));
	out.println("<br>Notes:"+request.getParameter("notes"));
}
else 
{
	%>
	
	<form action="#" name="workflow" method="post" >
	  <table cellspacing="1" cellpadding="3" width="100%" bgcolor="#D0DCE0" border="1">
	    <tr bgcolor="#F0DCF0"> 
	      <td colspan="2"><b>Action:</b></td>
	    </tr>
	    <!-- table --> 
	    <tr bgcolor="#ffffff" valign="top"> 
	      <td bgcolor="#ffffff" width="150" > <b>Status</b> </td>
	      <td bgcolor="#ffffff"> 
	        <select name="status" size="1">
	          <option value="ip" selected>Approve</option>
	          <option value="rd">Remedy</option>
	          <option value="rj">Reject</option>
	        </select>
	      </td>
	    </tr>
	    <!-- id --> 
	    <tr bgcolor="#ffffff" valign="top"> 
	      <td bgcolor="#ffffff" width="150" > <b>Notes</b> </td>
	      <td bgcolor="#ffffff"> 
	        <textarea name="notes" cols="35" rows="3"></textarea>
	      </td>
	    </tr>
	    <!-- status --> 
	    <tr bgcolor="#ffffff" valign="top"> 
	      <td bgcolor="#ffffff" width="150" >&nbsp;</td>
	      <td bgcolor="#ffffff"> 
	        <input type="submit" name="submit" value="Submit">
	      </td>
	    </tr>
	  </table>
	  </form>
	<%
}
%>
<p>
	<p>
	<div align="right"><a href="/cimande/detail.html" target="_blank">Preview</a>&#160;&#160;&#160;<input type="submit" name="close" value="Close" />&#160;&#160;&#160;&#160;</div>
	</body></html>
