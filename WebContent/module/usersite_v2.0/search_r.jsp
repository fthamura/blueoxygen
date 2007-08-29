<%@ include file="/include/header_module.jsp"%>
<%@ include file="/include/db.jsp"%>
<%@include file="/frontpage/search/common_search_limit.jsp"%>
<%	
if (session.getAttribute("GA_USER")!=null) {
	String sSelectAll= "SELECT * ";
	String sSelectCount= "SELECT COUNT(id)";
	String sQuery = "from backend_user WHERE 1 ";
	String pass = null;
	String sConnector="AND";
	StringUtils string = new StringUtils();
				pass=string.encodeBase64(request.getParameter("password"));	

	String sCalFlag = request.getParameter("cal_flag");
	String sProjectFlag = request.getParameter("project_flag");

if ( sCalFlag == null ) { sCalFlag=""; }
if ( sProjectFlag == null ) { sProjectFlag=""; }

if (!(request.getParameter("id")).equals(""))  sQuery = sQuery + sConnector + " id like '%"+request.getParameter("id")+"%' ";
if (!(request.getParameter("username")).equals(""))  sQuery = sQuery + sConnector + " username like '%"+request.getParameter("username")+"%' ";
if (!(request.getParameter("password")).equals(""))  sQuery = sQuery + sConnector + " password like '%"+pass+"%' ";
if (!(request.getParameter("firstname")).equals(""))  sQuery = sQuery + sConnector + " first_name like '%"+request.getParameter("firstname")+"%' ";
if (!(request.getParameter("lastname")).equals(""))  sQuery = sQuery + sConnector + " last_name like '%"+request.getParameter("lastname")+"%' ";
if (!(request.getParameter("company_id")).equals(""))  sQuery = sQuery + sConnector + " company_id like '%"+request.getParameter("company_id")+"%' ";
if (!(request.getParameter("position_id")).equals(""))  sQuery = sQuery + sConnector + " job_position_id like '%"+request.getParameter("position_id")+"%' ";
if (!(request.getParameter("email")).equals(""))  sQuery = sQuery + sConnector + " email like '%"+request.getParameter("email")+"%' ";
if (!(request.getParameter("address1")).equals(""))  sQuery = sQuery + sConnector + " address1 like '%"+request.getParameter("address1")+"%' ";
if (!(request.getParameter("city")).equals(""))  sQuery = sQuery + sConnector + " city like '%"+request.getParameter("city")+"%' ";
if (!(request.getParameter("desc")).equals(""))  sQuery = sQuery + sConnector + " description like '%"+request.getParameter("desc")+"%' ";
if (!sCalFlag.equals("") )  sQuery = sQuery + sConnector + " calendar_flag like '%"+sCalFlag+"%' ";
if (!sProjectFlag.equals("") )  sQuery = sQuery + sConnector + " project_flag like '%"+sProjectFlag+"%' ";

if (iStart==0) {
	mySQL = sSelectCount+sQuery;
	myResultSet = dbBean.execSQL(mySQL);
	if (myResultSet.next())	iCount = Integer.parseInt(""+myResultSet.getString("COUNT(id)"));	
}
	mySQL = sSelectAll+sQuery+sLimit;
	myResultSet = dbBean.execSQL(mySQL);
	if (myResultSet.next()) {
	myResultSet.beforeFirst();
%>
  <table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
    <tr bgcolor="#ffffff" valign="top"> 
      <td bgcolor="#D0DCFF" colspan="7"><b>Search Result  
        </b></td>
    </tr>
	<tr bgcolor="eeeeee">
			
			<td align="center"><b>Login</b></td>
			<td align="center"><b>Name</b></td>
			<td align="center"><b>Company</b></td>
			<td align="center"><b>Position</b></td>
			<td align="center" colspan="3"><b>Option</b></td>
			
	</TR>
<%
	while (myResultSet.next()){
		iTotalResult++;
%>
	    <tr bgcolor="#ffffff" valign="top"> 
		<td><%= myResultSet.getString("username") %></td>
		<td><%= myResultSet.getString("first_name")%>&nbsp;<% out.println(myResultSet.getString("last_name")); %></td>
		<td><% 	mySQL = "SELECT name from company where id ='"+myResultSet.getString("company_id")+"'";
				myResultSet1 = dbBean.execSQL(mySQL);
				if (myResultSet1.next()) out.println(myResultSet1.getString("name"));
			 %></td>
		<td><% 	mySQL = "SELECT name from job_position where id ='"+myResultSet.getString("job_position_id")+"'";
				myResultSet1 = dbBean.execSQL(mySQL);
				if (myResultSet1.next()) out.println(myResultSet1.getString("name"));
			 %></td>
		
    <td align="center"> <a href="detail.jsp?id=<% out.println(myResultSet.getString("id")); %>"><font color="blue">Detail</font></a></td>
    <td align="center"> <a href="edit.jsp?id=<% out.println(myResultSet.getString("id")); %>"><font color="blue">Edit</font></a></td>
    <td align="center"> <a href="delete.jsp?id=<% out.println(myResultSet.getString("id")); %>" onclick="return warningMessage();"><font color="blue">Delete</font></a></td>

	</tr>
<% } %>
<%@include file="/module/include/user_button_search.jsp"%>
<% } else { %>
	<table width="100%" border="0" cellpadding="3" cellspacing="1">
	  <tr><td><strong> Data Not Found </strong></td></tr>
<% } %>

</table>
<br>
</TD></tr>
</table>

<% } else { %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table>
<% } %>	

<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>


<script language="JavaScript" version="1.2">
<!--
function warningMessage() {
var x=false;
if (confirm("Are you sure you? This cannot be undone!")) {
 return true;
} else {
 return false;
}
}
-->
</script>