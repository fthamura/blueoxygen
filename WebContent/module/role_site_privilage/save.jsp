<%@ include file="/include/header_module.jsp"%>
<%@ include file="db.jsp"%>
<% 
String code=request.getParameter("code");

Iterator i ;
if (session.getAttribute("GA_USER")!=null) {
	RoleSitePrivilage roleSitePrivilage;
    roleSitePrivilage = (RoleSitePrivilage)session.getAttribute("org.blueoxygen.cimande.rolesite.rsprivilage");

mySQL = "delete from role_site_privilage where role_site_id ='"+roleSitePrivilage.getRoleID()+"' and rs_site_id ='"+roleSitePrivilage.getRSiteID()+"' and site_id='"+roleSitePrivilage.getSiteId()+"'";
dbBean.execute(mySQL);

ArrayList arrList = (ArrayList) session.getAttribute("varexist");
if (arrList != null) {
	i = arrList.iterator(); 
	int counter=1 ;
	while (i.hasNext()) {
			Map item = (Map) i.next();
			mySQL = "insert into role_site_privilage (site_id,id,role_site_id,rs_site_id,module_function_id) values ('"+roleSitePrivilage.getSiteId()+"','"+item.get("id")+"','"+roleSitePrivilage.getRoleID()+"','"+roleSitePrivilage.getRSiteID()+"','"+item.get("module_id")+"')"; 
			dbBean.execute(mySQL);
			counter++ ;
			}

arrList.clear();
		}
%>
<br><br>
<table width="98%" border="0" >
<tr><td align="center" height="30"><table>  
  <tr> 
    <td align="center" colspan="2"><b>DATA SAVED ...............!</b></td>
  </tr>

</table>


<% } else {
%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table>
<% } %>		
<%@ include file="/include/db_close.jsp"%>
<%@ include file="/include/footer_module.jsp" %>	