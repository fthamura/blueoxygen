<html>
</head><title>BlueOxygen Cimande</title></head>
<LINK href="../style.css" type="text/css" rel="stylesheet"/>
<body>
<%@ page language="java" import="java.sql.*, 
				org.blueoxygen.dal.DbBean,
				java.util.*
				"
%>
<!-- written by Frans Thamura "frans@blueoxygen.org" -->
<%
	//global variables
	DbBean dbBean = new DbBean();
	String mySQL,mySQL1 = "";
	ResultSet myResultSet,myResultSet1;
 	// Open database connection
	dbBean.connect();
%>
ID Migrator.
This utility will make every ID become lower case.<p>

<%
String selectedfield="" ;		
String thefield="";
ArrayList arrList = new ArrayList();
Iterator i;
String table = request.getParameter("table");

if (request.getParameter("table")!=null) {
%>
The Table:<%=request.getParameter("table")%><p>
You Select:<br>
<%
		// query again all and get all the field
		
		mySQL="describe "+request.getParameter("table");
		myResultSet = dbBean.execSQL(mySQL);
		mySQL = "";
		//i = 0;
		while (myResultSet.next()){
			thefield=myResultSet.getString("Field");
			
			selectedfield = ""+request.getParameter(thefield);
			
			// check if the field from the table is selected, mean we must to lowercasing it
			if (selectedfield.equals("selected")) {
			
				mySQL1= "UPDATE INTO "+ request.getParameter("table")+ " WHERE ";
				mySQL1 = "SELECT "+thefield+" FROM "+table;
				//mySQL=mySQL.toLowerCase();
				// lowercasing the field...
				// dbBean.execSQL(mySQL);
				
				out.println("<li>"+thefield+"<br>");
				mySQL = mySQL + thefield + ",";	
				
				out.println(mySQL1+"<br>");
			} 
		//i = 0;
		}
out.println("<p>We will lowercase-ing " +mySQL + " FROM "+ request.getParameter("table"));

		

} else if (request.getParameter("showtable")!=null) {
		mySQL="describe "+request.getParameter("showtable");
		myResultSet = dbBean.execSQL(mySQL);
		%>
		Select Field(s)
		<form method="get" action="uuid-migrator.jsp" name="selectfield" 
		<table width="100%">
		<%
		while (myResultSet.next()){
		%>
		<tr>
		<td>
			<input type="checkbox" name="<%=myResultSet.getString("Field")%>" value="selected"/>
			<%=myResultSet.getString("Field")%><br>
		</td>
		</tr>
		<% } %>
		<tr><td>
			<input type="hidden" name="table" value="<%=request.getParameter("showtable")%>">
			<input type="submit" value="submit">
		</td></tr>
		</table>
		
		</form>

<%
} else {		
		mySQL="show tables";
		myResultSet = dbBean.execSQL(mySQL);
		%>
		
		<table>
		<%
		while (myResultSet.next()){
		%><tr>
		<td>
		<a href="?showtable=<%=myResultSet.getString("Tables_in_remarkable")%>"><%=myResultSet.getString("Tables_in_remarkable")%></a>
		</td>
		</tr>
		<% } %>
		</table>

<%
}
dbBean.close();
%>
</body>
</html>