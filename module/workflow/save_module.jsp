<%@ include file="header.jsp"%>
<%@ include file="db.jsp"%>

<% 
String code=request.getParameter("code");

Iterator i ;
if (session.getAttribute("GA_USER")!=null) {
	Workflowrole workflowrole;
    workflowrole = (Workflowrole)session.getAttribute("org.blueoxygen.cimande.rolesite.wfrole");

	ModuleFunctionSite mfsite;
    mfsite = (ModuleFunctionSite)session.getAttribute("org.blueoxygen.cimande.rolesite.modulefunction");
	
	
if (code.equalsIgnoreCase("add"))
{
	ArrayList siteList = (ArrayList) session.getAttribute("site");
if (siteList != null) {
	i = siteList.iterator(); 
	int counter=1 ;
	while (i.hasNext()) {
			Map siteitem = (Map) i.next();
			mySQL = "insert into role_site (site_id,id,role_site_id,module_function_id) values ('"+workflowrole.getSiteId()+"','"+mfsite.getID()+"','"siteitem.get("id")+"','"+siteitem.get("module_id")+"')"; 
			dbBean.execSQL(mySQL);
			}
siteList.clear();
		}
		

}
else {
mySQL = "delete from role_site where role_site_id='"+mfsite.getID()+"'";
dbBean.execSQL(mySQL);
	ArrayList siteList = (ArrayList) session.getAttribute("site");
if (siteList != null) {
	i = siteList.iterator(); 
	int counter=1 ;
	while (i.hasNext()) {
			Map siteitem = (Map) i.next();
			mySQL = "insert into role_site (site_id,id,role_site_id,module_function_id) values ('"+workflowrole.getSiteId()+"','"+mfsite.getID()+"','"siteitem.get("id")+"','"+siteitem.get("module_id")+"')"; 
			dbBean.execSQL(mySQL);
			}

siteList.clear();
		}
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