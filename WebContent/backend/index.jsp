<%

String sGA_USER;
sGA_USER=(String)session.getAttribute("GA_USER");

// if status is logged in
if (sGA_USER!=null) {

	// if site ID is selected	
	
	if (session.getAttribute("GS_USER")!=null) { 
		response.sendRedirect("../backend/yuitree.action");
	} else {
		response.sendRedirect("../backend/user/index.action");
	}
		
} else {
	response.sendRedirect("../backend/user/index.action");
}
%>
