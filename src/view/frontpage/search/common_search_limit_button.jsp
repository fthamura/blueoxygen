<% // populate prev and next button %>
<table border="0" width="100%">
  <tr bgcolor="#ffffff" valign="top" ><td align="right">&nbsp;
<% 
  // check prev query
  if ((iStart>0)&&(iStart<iCount)) {
%>
    <a href="?maxresult=<%=iMaxResult%>&count=<%=iCount%>&start=<%=iStart-iMaxResult%>"><img src="/cimande/workspc/images/btn-prev.gif" border="0"></a>
<% } else { %>
	<img src="/cimande/workspc/images/btn-prev-disable.gif" border="0">
<%
	}

  // check next query	
  if ((iTotalResult>=iMaxResult)&& ((iStart+iMaxResult)<iCount)) {
%>

  	<a href="?maxresult=<%=iMaxResult%>&count=<%=iCount%>&start=<%=iStart+iMaxResult%>"><img src="/cimande/workspc/images/btn-next.gif" border="0"></a>
<% } else { %>
 	<img src="/cimande/workspc/images/btn-next-disable.gif" border="0">
<% } %>	
  </td></tr></table>