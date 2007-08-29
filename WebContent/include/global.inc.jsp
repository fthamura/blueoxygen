<%@ page language="java" import="java.sql.*, 
				java.io.File,
				org.blueoxygen.cimande.sitemanager.*,
				org.blueoxygen.cimande.descriptor.*,
				org.blueoxygen.dal.DbBean,
	        	org.blueoxygen.backoffice.account.Login,
	        	org.blueoxygen.util.UUID, 
				java.util.*,
	    	    java.text.*,
	        	java.net.*
				"
%>

<%@ include file="/include/global.init.jsp" %>

<%

	Login loginBean;
	// Global variable;
	
	boolean bValidate=false;
	String sTitle="Descriptor Title";               
    	int admin_flag, builder_flag, filler_flag, activeflag;
    	//String sURI="/cimande";
    	String sURI = request.getContextPath();
    	String sMessage="";
    	String sAction="";
    	
    	// Open database connection
	dbBean.connect();
	//loginBean.connect();
	
	if (session.getAttribute("GA_USER")!=null) {
		loginBean = new Login(""+(String)session.getAttribute("GA_USER")); 
	} else {
		loginBean = new Login();
	}
	
	// Activate Parameter
	String sBackendLocation=sURI+"/backend";
	String sDescriptorLocation=sURI+"/descriptor";
	

%>
