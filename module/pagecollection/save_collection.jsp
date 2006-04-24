<%@ include file="/include/header_module.jsp" %>
<%@ include file="/include/db.jsp" %>

<% 
if (session.getAttribute("GA_USER")!=null) {
String temp=request.getParameter("code");
Iterator i ;
String strfolder = null;
PageCollection pagecollection= null;
pagecollection = (PageCollection)session.getAttribute("org.blueoxygen.cimande.pagecollection.pcollection");
if (pagecollection != null) 
	{ 

if (temp.equalsIgnoreCase("add"))
{
mySQL = "insert into page_collection (id,site_id,name,description,skin_id,descriptor_id,active_flag) values ('"+pagecollection.getId()+"','"+pagecollection.getSiteId()+"','"+strnew.replaceHTMLInput(pagecollection.getName())+"','"+strnew.replaceHTMLInput(pagecollection.getDescription())+"','"+pagecollection.getSkinId()+"','"+pagecollection.getCategory()+"','"+pagecollection.getActiveFlag()+"')";
dbBean.execSQL(mySQL);

} else {
	
mySQL = "update page_collection set name='"+strnew.replaceHTMLInput(pagecollection.getName())+"',description='"+strnew.replaceHTMLInput(pagecollection.getDescription())+"',skin_id='"+pagecollection.getSkinId()+"',descriptor_id='"+pagecollection.getCategory()+"',active_flag='"+pagecollection.getActiveFlag()+"' where id='"+pagecollection.getId()+"' and site_id='"+pagecollection.getSiteId()+"'";

dbBean.execSQL(mySQL);

mySQL = "delete from page_collection_detail where frontpage_id='"+pagecollection.getId()+"'";
dbBean.execSQL(mySQL);
}



ArrayList arrList = (ArrayList) session.getAttribute("collect");
if (arrList != null) {
	i = arrList.iterator(); 
	while (i.hasNext()) {
			Map item = (Map) i.next();
			mySQL = "insert into page_collection_detail (id,frontpage_id,collection_id,collection_name,site_id) values ('"+item.get("id")+"','"+pagecollection.getId()+"','"+item.get("collection_id")+"','"+item.get("collection_name")+"','"+pagecollection.getSiteId()+"')"; 
			dbBean.execSQL(mySQL);
			}

		arrList.clear();
		}
%>

<table width="98%" border="0" >
<tr><td align="center" height="30"><table>  
  <tr> 
    <td align="center" colspan="2"><b>DATA SAVED ...............!</b></td>
  </tr>
</table>
		
<%		
} else { out.println("Session frontpage = null cannot generate frontpage detail !!"); }		

} else {
%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table>
<% } %>	
<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>
