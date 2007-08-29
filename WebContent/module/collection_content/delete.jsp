<%@ include file="header.jsp"%>
<%@ include file="/include/db.jsp" %>

<% 
	mySQL = "delete from collection_detail where collection_id='"+request.getParameter("id")+"'";
	myResultSet = dbBean.execSQL(mySQL);
%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><br><br>
<table width="98%" border="0" >
<tr><td align="center" height="30"><table>  
  <tr> 
    <td align="center" colspan="2"><b>DATA DELETED ...............!</b></td>
  </tr>

</table>

<%@ include file="footer.jsp" %>