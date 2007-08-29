<%@ page language="java" import="java.sql.*, 
				java.util.Enumeration, 
				java.io.File,
				org.blueoxygen.dal.DbBean,
				org.blueoxygen.util.UUID, 
				org.blueoxygen.util.StringUtils,
				org.blueoxygen.backoffice.account.Login,
				java.util.*,org.blueoxygen.cimande.usersite.*,
				org.blueoxygen.cimande.collection.*,
				org.blueoxygen.cimande.pagecollection.* "
						%>

<jsp:useBean id="dbBean" scope="application" class="org.blueoxygen.dal.DbBean">
	<jsp:setProperty name="dbBean" property="*" />
</jsp:useBean>        

<%
  Login loginBean = null;
	//global variables
	String webRoot="/member";
	UUID randomID = new UUID();

	//dbBean variables
	String dbURL="jdbc:mysql://localhost/smiletown";
	String dbUser = "root";
	String dbPassword = "tulalit";
	String dbDriver = "org.gjt.mm.mysql.Driver";
	String mySQL = "";
	ResultSet myResultSet = null;
	ResultSet myResultSet1 = null;
	ResultSet myUOM = null;
	//dbBean.setDbDriver(dbDriver);
	//dbBean.setDbURL(dbURL);
	//dbBean.setDbUser(dbUser);
	//dbBean.setDbPassword(dbPassword);
	
 	// Open database connection
	dbBean.connect();
%>