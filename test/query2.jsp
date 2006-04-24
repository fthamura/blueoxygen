<%@ page language="java" 
	import="java.sql.*, 
			java.io.FileInputStream,
			java.io.File,
		        java.util.*,
	        	java.text.*,
	        	java.net.*,
			org.blueoxygen.dal.DbBean,
        		org.blueoxygen.util.StringUtils"
%>
<%

	DbBean dbBean = new DbBean();
	dbBean.connect();
	String mySQL = "SELECT DISTINCT pt.assigner_id,bu.first_name from activity_project pt left outer join backend_user bu on pt.assigner_id=bu.id";
	ResultSet myResultSet = dbBean.execSQL(mySQL);	
	if (myResultSet.next()) {
	myResultSet.beforeFirst();
%>	
<table border=1 cellpadding=5>
<tr>
<td>assigner_id</td>
<td>first_name</td>
</tr>
<%
	while (myResultSet.next()){	
%>
<tr>
	<td><%out.println(myResultSet.getString("pt.assigner_id"));%></td>
	<td><%out.println(myResultSet.getString("bu.first_name"));%></td>
</tr>
<%
}
%>
</table>
<%
	
	}
%>


