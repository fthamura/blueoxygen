<%@ include file="/include/global.inc.jsp" %>
<%
mySQL = "SELECT * FROM site";

myResultSet=dbBean.execSQL(mySQL);
while (myResultSet.next()) {
	          	%>
	              <%=myResultSet.getString("id")%>" >
	            <%=myResultSet.getString("description")%>

<%
}
%>
