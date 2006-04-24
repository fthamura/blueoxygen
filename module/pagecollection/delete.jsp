<%@ include file="/include/header_module.jsp" %>
<%@ include file="/include/db.jsp" %>


<% 
	mySQL = "delete from page_collection where id='"+request.getParameter("id")+"'";
	myResultSet = dbBean.execSQL(mySQL);
	mySQL = "delete from page_collection_detail where frontpage_id='"+request.getParameter("id")+"'";
	myResultSet = dbBean.execSQL(mySQL);

%>
<br><br>
<table width="98%" border="0" >
<tr><td align="center" height="30"><table>  
  <tr> 
    <td align="center" colspan="2"><b>DATA DELETED ...............!</b></td>
  </tr>
</table>

<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>
