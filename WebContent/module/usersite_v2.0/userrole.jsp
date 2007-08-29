<%@ include file="/include/header_module.jsp"%>
<%@ include file="/include/db.jsp"%>
<%
String code=request.getParameter("code");
int count=0;
//cek kalo item yang mau ditambahin udah ada, jadi ditolak (proses ini udah dijalanin di actAddVarList.jsp
//disini cuman nyampein pesen ke user aja.

if (request.getParameter("strExst") != null) { %>
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>UserRole &nbsp;&nbsp;<font color="blue"> (Role Already Exist !! )</font></b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
	
<% } else { %>
 
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>User Role</b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
      	
<% } %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#D0DCFF" colspan="3"><b>Master</b></td>
      	</tr>
<%@ include file="master.jsp" %>
   	     	
<tr bgcolor="#ffffff" valign="top"> 

      	<td bgcolor="white" colspan="10">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="10"><b> Detail
        </b></td>
        </tr>    	     	
<% if (request.getParameter("act")==null || request.getParameter("act").equalsIgnoreCase("add")) {
	%>
<%@ include file="add_role.jsp" %>
<% } else {%>
<%@ include file="edit_role.jsp" %>

<% 
} %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="4"><b> User Role Detail
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Role ID</b></td>
	<td align="center" ><b>Role Name</b></td>
	<td align="center" colspan="2" ><b>Action</b></td></tr>
<%

Iterator i ;
ArrayList roleList = (ArrayList) session.getAttribute("role");
int j=1;

if (roleList != null) {
	i = roleList.iterator(); 
	count=0;
	while (i.hasNext()) {		
		Map item = (Map) i.next();
			out.println("<tr bgcolor=ffffff>");	
			if (j==1) {										
	    		out.println("<td><b>" + item.get("role_id") + "</b></td>");
				out.println("<td><b>" + item.get("role_name")  + "&nbsp[default]</b></td>");
			} else {		
	    		out.println("<td>" + item.get("role_id") + "</td>");
				out.println("<td>" + item.get("role_name") + "</td>");
			}
			out.println("<td><a href='userrole.jsp?idn=" + item.get("id") + "&act=edit&code="+code+"'>Edit</a></td>");
			out.println("<td><a href='del_role.jsp?idn=" + item.get("id")  + "&code="+code+"'>Del</a></td></tr>"); 
	   j++;
	   count++;
	   }   
}
%>
</table>
<table width="100%""><tr>
	
	<td colspan="5" align="right" valign="top"><table><tr><td>
	<form action="index_b.jsp?code=<%= code %>"><input type="submit" value="&lt;&lt; Back"></form>
	</td><td><form action="usersite.jsp?code=<%= code %>" name="role" method="post"><INPUT TYPE="hidden" NAME="count" value="<%= count %>"><input type="submit" value="Next &gt&gt" onclick="cekMap(); return false;"></form></td></tr></table>
	</td></tr>
</table>
</td></tr>
</table>

<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>


<script language="JavaScript">
<!--
function ceksubmit() { 
		if (document.frmForm.role_id.value=="")
		{ alert("Role ID can not be blank.");
		  return false;
		}	else	{ document.frmForm.submit(); }
}		
function GoAddressrole() {
		window.open("view_role.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
}		

function cekMap() { 		
		if (document.role.count.value=="0")
		{ alert("You must choose at least one role default !");
		  return false;
		} else { document.role.submit(); }
}		
		
-->
</script>