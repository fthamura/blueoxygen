<%@ page language="java" import="java.sql.*, java.util.Enumeration, java.io.File" %>
                     
<jsp:useBean id="loginBean" scope="application" class="org.blueoxygen.membership.account.Login">
	<jsp:setProperty name="loginBean" property="*" />
</jsp:useBean>        

<jsp:useBean id="dbBean" scope="application" class="org.blueoxygen.dal.DbBean">
	<jsp:setProperty name="loginBean" property="*" />
</jsp:useBean>        

<%

	// Global variable;
	ResultSet myResultSet=null;
	String mySQL="";
	boolean bValidate=false;
	String sTitle="Descriptor Title";               
    	int admin_flag, builder_flag, filler_flag, activeflag;
    	
    	String sMessage="";
    	
    	// Open database connection
	
	dbBean.connect();
	//loginBean.connect();
	
		
	if (session.getAttribute("G_USER")!=null) {	
		loginBean.setHashCode(""+session.getAttribute("G_USER")); 
	}
	
	// URI
	
	String sURI="/tomato";

%>