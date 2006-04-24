<%@ include file="/include/global.inc.jsp" %>
<%@ taglib uri="sitemesh-decorator" prefix="decorator" %>
<%@ taglib uri="webwork" prefix="webwork" %>
<%
sActiveFolder="nagasakti";
%>
<%
    String root = request.getContextPath();
    response.setHeader("Cache-Control", "none");
%>
<%@ include file="/decorators/cimande-header.jsp" %>
<% 
if (session.getAttribute("GA_USER")!=null) {
	
%>
<decorator:body />

<% } else { %>
	<%@ include file="/workspc/include/status-not-login.jsp" %>
<% } %>	
<%@ include file="/workspc/include/workspc-footer.jsp" %>
<%@ include file="/include/db_close.jsp" %>