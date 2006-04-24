<%@ include file="db.jsp" %>
<%		String code = request.getParameter("code");
		String back = request.getParameter("back");
		String sSiteId = null; 
		String sId = request.getParameter("id");
		String sWorkflowname = request.getParameter("workflow_name");
		String sWorkflowdesc = request.getParameter("workflow_desc"); 

		sSiteId = (String)session.getAttribute("GS_USER");
	Workflowrole workflowrole;
    workflowrole = new Workflowrole(sSiteId,sId,sWorkflowname,sWorkflowdesc);
                session.setAttribute("org.blueoxygen.cimande.rolesite.wfrole", workflowrole);

		response.sendRedirect("wfroleSite.jsp?code="+code);     
%>