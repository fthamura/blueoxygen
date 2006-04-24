<%@ include file="/include/global.inc.jsp" %>
<html>
<head>
</head>
<LINK href="/../style.css" type=text/css rel=stylesheet>
<SCRIPT LANGUAGE="JavaScript">

function toggle(myObj){
  if (myObj.style.display == "") {
    myObj.style.display = "none";

  }
  else {
    myObj.style.display = "";

  }
}

function linkstyle(myObj){
  myObj.style.cursor="hand";
  myObj.style.textDecorationUnderline=true;
  myObj.style.color='red';
  myObj.style.hover='red';
}

function normalstyle(myObj){
  myObj.style.cursor="";
  myObj.style.textDecorationUnderline=false;
  myObj.style.color='black';
}

</SCRIPT>
<body bgcolor="D0DCE0">
<table>
<tr width=155 align="left" valign="top">
<td >
<%
if (session.getAttribute("GA_USER")!=null) {

// login

%>
	<BR><b><%=loginBean.getFirstName()%></b><BR>
	<%
	mySQL = "SELECT DISTINCT workflow_role.name FROM backend_user, workflow_role WHERE backend_user.role_id=workflow_role.id AND backend_user.id='"+loginBean.getMemberId()+"'";
	ResultSet myResultSet2=dbBean.execSQL(mySQL);
	myResultSet2.next();
	out.println("- <b>"+myResultSet2.getString("name")+"</b> -");
	%>
	<p><a href="../backend/user/logout.jsp" target="_parent" >Logout</a>    		<BR>
	<div align="right"><a href="main.jsp"><img src="/../images/refresh.gif" alt="Refresh" border="0"></a></div>
	<font size="2"><b>Module:</b><BR>
	<%

		// Query
		// find iparent value
		mySQL="SELECT DISTINCT module_function.id, descriptor.url_descriptor, module_function.description FROM module_function ,descriptor, role_privilage AS privilage, backend_user WHERE module_function.descriptor_id=descriptor.id AND module_function.id=privilage.module_function_id AND privilage.privilage_flag='1' AND iparent='0' AND privilage.role_id=backend_user.role_id AND module_function.active_flag='1' AND backend_user.id='"+loginBean.getMemberId()+"' ORDER BY module_function.description";

		// System.out.println(mySQL);
	 	myResultSet=dbBean.execSQL(mySQL);


	   	while (myResultSet.next())
		{

		// First Node
	%>

		<DIV id="parent<%=myResultSet.getString("id")%>" >
			<A onclick="toggle(divchild<%=myResultSet.getString("id")%>);" onmouseout=normalstyle(this) onmouseover=linkstyle(this);><IMG name="imEx" border=0 height=9 src="/../images/blackdot.gif" width=9></a>&nbsp;<A onclick="toggle(divchild<%=myResultSet.getString("id")%>);" onmouseout=normalstyle(this) onmouseover=linkstyle(this);><font size="2"><%=myResultSet.getString("description")%><BR></A>

    			<%

    			// query node 2 -- function
    			mySQL="SELECT DISTINCT  module_function.ref_desc, module_function.id,descriptor.url_descriptor, descriptor.description, descriptor.name FROM module_function, descriptor WHERE module_function.descriptor_id=descriptor.id AND descriptor.active_flag='1' AND iparent='"+myResultSet.getString("id")+ "' ORDER BY descriptor.description" ;

	 		myResultSet2=dbBean.execSQL(mySQL);
	 		
	 		
	   		%>
	   		<DIV id="divchild<%=myResultSet.getString("id")%>" style="DISPLAY: none"><%
		   		while (myResultSet2.next())
				{
    				%>
    					<%
    					// query node 3
					mySQL="SELECT DISTINCT ResultSet2.id, descriptor.url_descriptor,descriptor.id descriptor_id,ResultSet2."+myResultSet2.getString("ref_desc")+ " FROM descriptor,"+myResultSet2.getString("name") + " as ResultSet2 WHERE descriptor.active_flag='1' AND descriptor.id='"+myResultSet2.getString("id")+"' ORDER BY ResultSet2."+myResultSet2.getString("ref_desc");

		 			ResultSet myDescriptorResultSet2=dbBean.execSQL(mySQL);

		 			// System.out.println(mySQL);
		 			// Second Node
		 			%>

    						&nbsp;&nbsp;<A onclick="toggle(divchild2<%=myResultSet2.getString("id")%>);" onmouseout=normalstyle(this) onmouseover=linkstyle(this);><IMG name="imEx" border=0 height=9 src="/../images/blackdot.gif" width=9></A> <a onclick="toggle(divchild2<%=myResultSet2.getString("id")%>);" onmouseout=normalstyle(this) onmouseover=linkstyle(this); target="right" ><font size="2"><%=myResultSet2.getString("description")%></font><BR></a>

    						<DIV id="divchild2<%=myResultSet2.getString("id")%>" style="DISPLAY: none">
    							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="right" href="/../descriptor/<%=myResultSet2.getString("url_descriptor")%>?action=new" onmouseout=normalstyle(this) onmouseover=linkstyle(this);><font size="2">New</font></a>
    							<BR>
    							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="right" href="/../descriptor/<%=myResultSet2.getString("url_descriptor")%>?action=search" onmouseout=normalstyle(this) onmouseover=linkstyle(this);><font size="2">Search</font></a>
    							<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;----------<BR>
		 					<%
			   				while (myDescriptorResultSet2.next())
							{
							// Third Node
	    						%>
	    						
	    						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<IMG name="imEx" border=0 height=9 src="/../images/blackdot.gif" width=9> <a onmouseout=normalstyle(this) onmouseover=linkstyle(this); target="right" href="/../descriptor/<%=myResultSet2.getString("url_descriptor")%>?action=edit&id=<%=myDescriptorResultSet2.getString("id")%>"><font size="2"><%=myDescriptorResultSet2.getString(myResultSet2.getString("ref_desc"))%></font></a><BR>
							<%

								// query child 3 --> sub module
    								mySQL="SELECT DISTINCT module_function.viewall_flag, module_function.ref_desc, module_function.id,descriptor.url_descriptor, descriptor.description, descriptor.name FROM module_function, descriptor WHERE descriptor.active_flag='1' AND module_function.descriptor_id=descriptor.id AND iparent='"+myResultSet2.getString("id")+ "' ORDER BY  module_function.ref_desc" ;

					 			ResultSet myResultSet3=dbBean.execSQL(mySQL);

					   			while (myResultSet3.next())
								{
		    							// query child 3 --> sub module value
		    							mySQL="SELECT DISTINCT descriptor.url_descriptor,ResultSet3.id ,ResultSet3."+myResultSet3.getString("ref_desc")+ " FROM descriptor,"+myResultSet3.getString("name") + " as ResultSet3 WHERE descriptor.id='"+myResultSet3.getString("id")+"'";
		    							if (myResultSet3.getString("viewall_flag").equals("0")) {
		    								mySQL = mySQL + " AND ResultSet3.descriptor_id='"+myDescriptorResultSet2.getString("id")+"'";
		    							}
		 							// System.out.println(mySQL);
		 							ResultSet myDescriptorResultSet3=dbBean.execSQL(mySQL);

		   							%>

		    							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2"><%=myResultSet3.getString("description")%></font><BR>
					    				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="right" href="/../descriptor/<%=myResultSet3.getString("url_descriptor")%>?action=new&descriptor_id=<%=myResultSet2.getString("id")%>" onmouseout=normalstyle(this) onmouseover=linkstyle(this);><font size="2">New</Font></a>
		    							<BR>
		    							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="right" href="/../descriptor/<%=myResultSet3.getString("url_descriptor")%>?action=search" onmouseout=normalstyle(this) onmouseover=linkstyle(this);><font size="2">Search</Font></a><BR>
		    							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;----------<BR>
									<%

						   			while (myDescriptorResultSet3.next())
									{
				    					%>
					    					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="right" href="/../descriptor/<%=myResultSet3.getString("url_descriptor")%>?action=edit&id=<%=myDescriptorResultSet3.getString("id")%>"><font size="2"><%=myDescriptorResultSet3.getString(myResultSet3.getString("ref_desc"))%></font></a><BR>
									<%
									}

								}
							// end while  (myDescriptorResultSet2.next())
		   					}
		   					%>
		   				</DIV>
	   				<% }%>
	   		</DIV><%

	   	%>
	   	</DIV><%
	   	}

} else {
	response.sendRedirect("/../backend/user/login.jsp");
}
%>
</td>
</tr>
</table>
<!--
(c) Copyright 2001, Blue Oxygen Foundation. 
-->
</body>
</html>
<%

dbBean.close();
//loginBean.close();
%>
