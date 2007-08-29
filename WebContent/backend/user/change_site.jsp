<%@ include file="/include/global.inc.jsp" %>
Change Active Site...
<% 

session.removeAttribute("GS_USER");  
loginBean = null;
response.sendRedirect(sURI+"/backend/user/site.jsp"); %> 
