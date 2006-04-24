<jsp:useBean id="myUpload" scope="page" class="com.jspsmart.upload.SmartUpload" />
<jsp:useBean id="randomID" scope="page" class="org.blueoxygen.util.UUID" />
<%@ include file="/include/global.inc.jsp" %>
<!-- written by Frans Thamura "greylite@linuxindonesia.com" -->

<html>
</head><title>Blue Oxygen Cimande</title></head>
<LINK href="<%=sURI%>/style.css" type="text/css" rel="stylesheet"/>
<body>
<h1>CRVD engine in Process...</h1><BR><BR>
<%

if (session.getAttribute("GA_USER")!=null) {
	// Initialization
	myUpload.initialize(pageContext);
	myUpload.setTotalMaxFileSize(1000000);
	
	// Variables
	int iCount = 0; 
	String myRecord = "", mySQLAction = "", mySQL = "", name;
	boolean dummy = true, bMissing;
	String chk_upload = "", lst_upload = "";
	String sFileName = randomID.generate() + "", sFieldName = "", sLastUploadFileName = "";
	
	out.println("<font color=\"red\">Processing....</font>");
	
	// Upload
	//myUpload.uploadInFile("/images/");
	myUpload.upload();
	
	// Variables
	String sSubmit = myUpload.getRequest().getParameter("submit");
	sAction = myUpload.getRequest().getParameter("action");
	String sId = myUpload.getRequest().getParameter("id");
	String sTable = myUpload.getRequest().getParameter("table");
	String sURLDescriptor = myUpload.getRequest().getParameter("lst_url_descriptor");
	
	int iTotalUpload = myUpload.getFiles().getCount();
	String sUploadDir;
	
	if (myUpload.getRequest().getParameter("table").equals("descriptor")) {
		sUploadDir="/descriptor";
	} else {
		sUploadDir="/descriptor/upload/" + myUpload.getRequest().getParameter("table");
	}
	
	// Retreive Requests' names
	java.util.Enumeration parameterEnum = myUpload.getRequest().getParameterNames();
	
	// if action=new and Save All pressed
	if (sAction.equals("new")) {
		out.println("<BR><font color=\"red\">Saving ....</font>");
		
		while (parameterEnum.hasMoreElements()) {
			name = (String)parameterEnum.nextElement();
			if (!name.equals("submit") && !name.equals("action") ) {
			//out.println("<BR> name : ");	
			//out.println("<b>"+name+"</b>");
			//out.println("<BR> parameter : ");
			//out.println("<b>"+myUpload.getRequest().getParameter(name)+"</b>");
			if (!name.equals("table")) {
				if (!dummy) {
					mySQL = mySQL + "," + name;
					myRecord = myRecord + "," + "'" + myUpload.getRequest().getParameter(name) + "'";
				}
				else {
					mySQL = mySQL + name; 
					myRecord = myRecord + "'" + myUpload.getRequest().getParameter(name) + "'";
					dummy=false;
				}
			}
			else {
		 		mySQLAction="INSERT INTO " + myUpload.getRequest().getParameter(name); 
			}
	   	}
	}
	
	for (int i = 0; i <= iTotalUpload-1; i++) {
		sFileName = sFileName + myUpload.getFiles().getFile(i).getFileName();	
		// if file is not exist.. upload the file, else.. add counter..
	  	// upload procedure if the file with this filename existed
	  	//out.println("<font color=\"blue\"> <br> file has already exist</font><br>");
	  	if (!myUpload.getFiles().getFile(i).getFileName().equals("")) {
			// if exist...save file with another name..
			myUpload.getFiles().getFile(i).saveAs (sUploadDir + "/" + sFileName, myUpload.SAVE_VIRTUAL);
			mySQL  = mySQL + "," + myUpload.getFiles().getFile(i).getFieldName(); 
			myRecord = myRecord + ",'" + sFileName + "'";
		}
		sFileName = randomID.generate();
	}
	
	mySQL = mySQLAction + "(site_id, create_by," + mySQL + ") VALUES ('" + 
		session.getAttribute("GS_USER") + "','" + loginBean.getMemberId() + "'," + myRecord + ")";
}
// ----------- update --- UPDATE ---------	
// if action=edit and Update All or Delete pressed
else if (sAction.equals("edit")) {
	if (sSubmit.equals("Delete")) {
		out.println("<BR><font color=\"red\">Delete process is starting....</font>");
		mySQL = "DELETE FROM " + sTable + " WHERE id='" + sId + "'";
		
		// delete uploaded file....????
		String sName="/upload" + myUpload.getRequest().getParameter("name");
		String sDescriptorUpload = getServletContext().getRealPath(sTable + sName);
		// System.out.println(sDescriptorUpload);
		File fileHandling = new File(sDescriptorUpload);
		// delete all file in "/descriptor/upload/"+sName directory
		String listFile[] = fileHandling.list();
		
		// from 0 to total files..execute delete...
		// File listHandling = new File(list[0]);
		// listHandling.delete();
		
		// mkdir
		// java.io.File fileHandling1 = new java.io.File(getServletContext().getRealPath("123.123.jsp"));
		// out.println(fileHandling1.mkdirs());

		//
		//
		//
		// ...... later ....
		
	}
	else if (sSubmit.equals("Create Table")) {
		out.println("<BR><font color=\"red\">Create Table is starting....</font>");
		mySQL = "Select id from backend_user where id=1";
		response.sendRedirect(sURI + "/descriptor/" + sURLDescriptor + "?action=generate");
	}
	else if (sSubmit.equals("Drop Table")) {
		out.println("<BR><font color=\"red\">Drop Table is starting....</font>");
		mySQL = "Select id from backend_user where id=1";
		response.sendRedirect(sURI + "/descriptor/" + sURLDescriptor + "?action=drop");
	}
	else if (sSubmit.equals("Update All")){
		out.println("<BR><font color=\"red\">Updating....</font>");
 		
 		while (parameterEnum.hasMoreElements()) {
        	name = (String)parameterEnum.nextElement();
			// by pass if chk_???? and lst_????? , chk=checkbox file and lst_ = last uplaoaded image
			if (!name.equals("submit") && !name.equals("action") && !name.equals("id") && !name.substring(0,4).equals("chk_") && !name.substring(0,4).equals("lst_") ) {
				//out.println("<BR> name : ");
				//out.println("<b>"+name+"</b>");
				//out.println("<BR> parameter : ");
				//out.println("<b>"+myUpload.getRequest().getParameter(name)+"</b>");
				if (!name.equals("table")) {
					if (!dummy) {
						mySQL = mySQL + "," + name + "='" + myUpload.getRequest().getParameter(name) + "'";
					}
					else {
						mySQL = mySQL + name + "='" + myUpload.getRequest().getParameter(name) + "'";
						dummy = false;
					}
				}
				else {
		 			mySQLAction = "UPDATE " + myUpload.getRequest().getParameter(name) + " SET "; 
				}
			}
		}
		
		for (int i=0; i<=iTotalUpload-1;i++) { 
			// if chk_url_uploadfilename = checked/1 -> delete existing file else> rename the uploaded file.
			
			chk_upload = "" + myUpload.getRequest().getParameter("chk_" + myUpload.getFiles().getFile(i).getFieldName());
			if (chk_upload.equals("1")) {
				lst_upload = sUploadDir + "/" + myUpload.getRequest().getParameter ("lst_" + myUpload.getFiles().getFile(i).getFieldName());
				// new file object
				File fileUpload = new File(getServletContext().getRealPath(lst_upload));
				// get the physical path of server
				//System.out.println(getServletContext().getRealPath(lst_upload));
				// delete the file
				fileUpload.delete();
			}
			
			// out.println(bMissing); always missing..... why
			sFileName = myUpload.getFiles().getFile(i).getFileName();
			sLastUploadFileName = "" + myUpload.getRequest().getParameter ("lst_" + myUpload.getFiles().getFile(i).getFieldName());
			sFieldName = myUpload.getFiles().getFile(i).getFieldName();
			
			// D E L E T E  file...
			//System.out.println("!!!!!!!!!!!!!!!"+sFileName);
			if (!sLastUploadFileName.equals("") && sFileName.equals("") && chk_upload.equals("1")) {
				// procedure delete file 
				out.println("<font color=\"blue\"> <br>"+sLastUploadFileName+" deleted </font><br>");
				
    	     	/*... put your procedure to delete existing uploaded file..*/  
        	 	
         		mySQL  = mySQL + ","+sFieldName+ "=''";
	         	//System.out.println(sLastUploadFileName);
			}
			// R E P L A C E file
			else if (!sLastUploadFileName.equals("") && !sFileName.equals("") && chk_upload.equals("1") ) {
				// delete first
				File fileUpload = new File(getServletContext().getRealPath(sFileName));
				//System.out.println("))))"+getServletContext().getRealPath(sFileName));
				// delete the file
				fileUpload.delete();
				// upload
				sFileName = randomID.generate() + sFileName;
				myUpload.getFiles().getFile(i).saveAs (sUploadDir + "/" + sFileName, myUpload.SAVE_VIRTUAL);
    	   		mySQL = mySQL + "," + sFieldName + "='" + sFileName + "'";
			}
			// U P L O A D file
			else if (!sFileName.equals("") && !chk_upload.equals("1")) {
        	 	// add a random prefix for file
         		sFileName = randomID.generate()+sFileName;
	         	/*... put your procedure to delete existing uploaded file..*/           			
				//out.println("<font color=\"blue\"> <br>"+sFileName+" uploaded</font><br>");
				myUpload.getFiles().getFile(i).saveAs(sUploadDir+"/"+sFileName, myUpload.SAVE_VIRTUAL);
         		mySQL = mySQL + "," + sFieldName + "='" + sFileName + "'";
			}
		
			// clearing memory
			chk_upload = "";
			bMissing = true;
			sFileName = "";
			sFieldName = "";
			sLastUploadFileName = "";
	  	} // end of for (i,iTotal)

		mySQL = mySQLAction + "site_id='" + session.getAttribute("GS_USER") + "', update_by='" + loginBean.getMemberId() + "'," + "update_date=NOW()," + mySQL + " WHERE id='" + myUpload.getRequest().getParameter("id") + "'" ;
	}
	else {
		mySQL = "Select id from backend_user where id=1";
	}
// ----------- search --- SEARCH ---------
}

dbBean.execSQL(mySQL); 
System.out.println(mySQL);
dbBean.close();
out.println("<BR><font color=\"red\">Transaction success</font>");

}
else {
	out.println("<H2>Session Time Out. Please Login Again.</H2>");
}

%>
<BR><BR>
<b>Notes:</b><BR>CRVD = Create, Replace, View and Delete
</body>
</html>