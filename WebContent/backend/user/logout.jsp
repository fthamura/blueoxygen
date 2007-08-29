<%@ include file="/include/global.inc.jsp" %>
Logout ...
<% 

session.removeAttribute("GA_USER");  
session.removeAttribute("GS_USER");  
session.removeAttribute("GAM_USER");  
loginBean = null;
response.sendRedirect(sURI+"/backend/index.jsp"); %> 
