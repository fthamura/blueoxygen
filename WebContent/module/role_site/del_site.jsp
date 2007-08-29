<%@ include file="db.jsp"%>

<%
String strid = request.getParameter("idn");
String code = request.getParameter("code");
	Workflowrole workflowrole;
    workflowrole = (Workflowrole)session.getAttribute("org.blueoxygen.cimande.rolesite.wfrole");

if (workflowrole != null) 
	{

Iterator itr; 
ArrayList siteList = (ArrayList)session.getAttribute("slist");
itr = siteList.iterator();
while (itr.hasNext()) {
	Map item = (Map) itr.next();
	
	if (strid.equalsIgnoreCase(item.get("site_id").toString())) {	
		siteList.remove(item);
		mySQL = "select id from role_site where role_id ='"+workflowrole.getID()+"' and rsite_id='"+item.get("site_id")+"'";
		myResultSet = dbBean.execSQL(mySQL);
		if (myResultSet.next()) {
				mySQL = "delete from role_site_privilage where role_site_id='"+myResultSet.getString("id")+"' and rs_site_id='"+item.get("site_id")+"'";
				dbBean.execSQL(mySQL);
				mySQL = "delete from role_site where id='"+myResultSet.getString("id")+"'";
				dbBean.execSQL(mySQL);
		}
		break;
	}
}




response.sendRedirect("delete_site.jsp?code="+code);



} else { out.println("Session User login = null cannot generate user login detail !!"); }
%>
  
 		