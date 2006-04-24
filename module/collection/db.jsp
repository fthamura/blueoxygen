<%@ page language="java" import="java.sql.*, 
				java.util.Enumeration, 
				java.io.File,
				org.blueoxygen.dal.DbBean,
				org.blueoxygen.util.UUID, 
				java.util.*,org.blueoxygen.cimande.pagecollection.* "
				
						%>

<jsp:useBean id="dbBean" scope="application" class="org.blueoxygen.dal.DbBean">
	<jsp:setProperty name="dbBean" property="*" />
</jsp:useBean>        

<%
	//global variables
	String webRoot="/member";
	UUID randomID = new UUID();

	//dbBean variables
	String dbURL="jdbc:mysql://localhost/smiletown";
	String dbUser = "";
	String dbPassword = "";
	String dbDriver = "org.gjt.mm.mysql.Driver";
	String mySQL = "";
	ResultSet myResultSet = null;
	ResultSet myResultSet1 = null;
	ResultSet myUOM = null;
	dbBean.setDbDriver(dbDriver);
	dbBean.setDbURL(dbURL);
	dbBean.setDbUser(dbUser);
	dbBean.setDbPassword(dbPassword);
	
 	// Open database connection
	dbBean.connect();
%>