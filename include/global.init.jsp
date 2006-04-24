<jsp:useBean id="dbBean" scope="application" class="org.blueoxygen.dal.DbBean">
	<jsp:setProperty name="dbBean" property="*" />
</jsp:useBean>        

<%
	//global variables
	String webRoot="/member";
	UUID randomID = new UUID();

	String mySQL = "";
	ResultSet myResultSet = null;
	ResultSet myResultSet1 = null;
	ResultSet myUOM = null;
	
 	// Open database connection
	dbBean.connect();
%>