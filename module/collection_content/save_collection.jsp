<%@ include file="header.jsp"%>
<%@ include file="/include/db.jsp" %>

<% 
if (session.getAttribute("GA_USER")!=null) {
String temp=request.getParameter("code");
Iterator i ;
DtCollection collection= null;
collection = (DtCollection)session.getAttribute("org.blueoxygen.cimande.collection.collect");
if (collection != null) 
	{

if (temp.equalsIgnoreCase("edit"))
{
mySQL = "delete from collection_detail where collection_id='"+collection.getId()+"'";
dbBean.execSQL(mySQL);
}




ArrayList arrList = (ArrayList) session.getAttribute("varexist");
if (arrList != null) {
	i = arrList.iterator(); 
	int counter=1 ;
	while (i.hasNext()) {
			Map item = (Map) i.next();
			mySQL = "insert into collection_detail (id,collection_id,descriptor_id,descriptor_name,article_id,article_desc,rank,site_id) values ('"+item.get("id")+"','"+collection.getId()+"','"+item.get("descriptor_id")+"','"+item.get("descriptor_name")+"','"+item.get("article_id")+"','"+item.get("article_desc")+"','"+counter+"','"+collection.getSiteId()+"')"; 
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