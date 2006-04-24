<%@ page language="java" 
	import="java.sql.*, org.blueoxygen.dal.DbBean"
%>
<%

	DbBean dbBean = new DbBean();
	dbBean.connect();
	String mySQL = "SELECT * FROM BENEFICIARY";
	ResultSet myResultSet = dbBean.execSQL(mySQL);	
	if (myResultSet.next()) {
	myResultSet.beforeFirst();
%>	
<table border=1 cellpadding=5>
<tr>
<td>id</td>
<td>name</td>
</tr>
<%
	while (myResultSet.next()){	
%>
<tr>
	<td><%out.println(myResultSet.getString("id"));%></td>
	<td><%out.println(myResultSet.getString("name"));%></td>
</tr>
<%
}
%>
</table>
<%
	
	}
%>


