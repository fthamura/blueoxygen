<%@ include file="header.jsp"%>
<%@ include file="db.jsp"%>

<% 
String code=request.getParameter("code");

Iterator i ;
if (session.getAttribute("GA_USER")!=null) {
	Workflowrole workflowrole;
    workflowrole = (Workflowrole)session.getAttribute("org.blueoxygen.cimande.rolesite.wfrole");

ArrayList arrList = (ArrayList) session.getAttribute("varexist");
if (arrList != null) {
	i = arrList.iterator(); 
	int counter=1 ;
	while (i.hasNext()) {
			
			Map item = (Map) i.next();
			mySQL = "insert into role_site (site_id,id,role_id,rsite_id) values ('"+workflowrole.getSiteId()+"','"+item.get("id")+"','"+workflowrole.getID()+"','"+item.get("site_id")+"')"; 
			dbBean.execute(mySQL);
			counter++ ;
			}

arrList.clear();
		}
%>

<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><br><br>
<table width="98%" border="0" >
<tr><td align="center" height="30"><table>  
  <tr> 
    <td align="center" colspan="2"><b>DATA SAVED ...............!</b></td>
  </tr>

</table>

<%@ include file="footer.jsp" %>
<% } else {
%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table></body></html>
<% } %>			