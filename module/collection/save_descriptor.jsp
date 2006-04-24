<%@ include file="header.jsp"%>
<%@ include file="/include/db.jsp" %>

<% 
if (session.getAttribute("GA_USER")!=null) {
String temp=request.getParameter("code");
Iterator i ;

CollectionData collection= null;
collection = (CollectionData)session.getAttribute("org.blueoxygen.cimande.collection.collect");
if (collection != null) 
	{

if (temp.equalsIgnoreCase("add"))
{
mySQL = "insert into collection (id,site_id,name,description,skin_id,status,active_flag) values ('"+collection.getId()+"','"+collection.getSiteId()+"','"+collection.getName()+"','"+collection.getDescription()+"','"+collection.getSkinId()+"','"+collection.getStatus()+"','"+collection.getActiveFlag()+"')";
dbBean.execSQL(mySQL);


} else {
mySQL = "update collection set name='"+collection.getName()+"',description='"+collection.getDescription()+"',skin_id='"+collection.getSkinId()+"',status='"+collection.getStatus()+"',active_flag='"+collection.getActiveFlag()+"' where id='"+collection.getId()+"' and site_id='"+collection.getSiteId()+"'";
dbBean.execSQL(mySQL);
mySQL = "delete from collection_descriptor where collection_id='"+collection.getId()+"'";
dbBean.execSQL(mySQL);
}




ArrayList arrList = (ArrayList) session.getAttribute("varexist");
if (arrList != null) {
	i = arrList.iterator(); 
	int counter=1 ;
	while (i.hasNext()) {
			Map item = (Map) i.next();
			mySQL = "insert into collection_descriptor (id,collection_id,descriptor_id,descriptor_name,ordered_by,limit_value,site_id) values ('"+item.get("id")+"','"+collection.getId()+"','"+item.get("descriptor_id")+"','"+item.get("descriptor_name")+"','"+item.get("ordered_by")+"','"+item.get("limit")+"','"+collection.getSiteId()+"')"; 
			dbBean.execSQL(mySQL);
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


<%		
} else { out.println("Session Collection = null cannot generate Collection detail !!"); }		
		%>


<%@ include file="footer.jsp" %>
<% } else {
%>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%"><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table></body></html>
<% } %>			