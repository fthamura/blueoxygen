<% // procudure to show prev and next button %>
  		<table border="0" width="98%"><tr valign="top"><td align="right">
<% 
  // check prev query
  if ((iStart>0)&&(iStart<iCount)) {
%>
	<form target="_self" action="/cimande/module/user_site/search_r.jsp">
	<input type="hidden" name="start"  value="<%= iStart-iMaxResult %>">
<%@include file="/module/include/user_search_query.jsp"%>
	<input type=image name="submit" src="/cimande/workspc/images/btn-prev.gif" border="0">
	</form>
<% } else { %>
	<img src="/cimande/workspc/images/btn-prev-disable.gif" border="0">
<% } %>
	</td><td width="48" height="20" align="right">
<%
  // check next query	
  if ((iTotalResult>=iMaxResult)&& ((iStart+iMaxResult)<iCount)) {
%>
	<form target="_self" action="/cimande/module/user_site/search_r.jsp">
	<input type="hidden" name="start"  value="<%= iStart+iMaxResult %>">
	<%@include file="/module/include/user_search_query.jsp"%>
	<input type=image name="submit" src="/cimande/workspc/images/btn-next.gif" border="0">
	</form>
<% } else { %>
 	<img src="/cimande/workspc/images/btn-next-disable.gif" border="0">
<% } %>	
  	</td></tr></table>