<%@ include file="/include/db.jsp" %>
<%
		String sStatus = request.getParameter("status");
		String sSiteId = request.getParameter("site_id"); 
		String sId = request.getParameter("id");
		String sName = request.getParameter("name");
		String sDescription =request.getParameter("description");
		String sSkinId = request.getParameter("skin_id");
		String sSkinName = request.getParameter("skin_name");
		String sCategory =request.getParameter("category");	
		String sActiveFlag =request.getParameter("active_flag");
		
PageCollection pagecollection;
   pagecollection = new PageCollection(sId,sSiteId,sName,sDescription,sSkinId,sSkinName,sCategory,sActiveFlag);
                session.setAttribute("org.blueoxygen.cimande.pagecollection.pcollection",pagecollection);
if (sStatus == null)
{
ArrayList arrList = (ArrayList)session.getAttribute("collect");
if (arrList == null) {
	 arrList = new ArrayList();
}
else { 
	arrList.clear();
 }
mySQL = "select pcd.*,coll.name from page_collection_detail pcd,collection coll where pcd.frontpage_id='"+request.getParameter("id")+"' and pcd.collection_id=coll.id";
myResultSet = dbBean.execSQL(mySQL);
while (myResultSet.next()){
int idx=arrList.size();	
Map map = new HashMap();
map.put("id", myResultSet.getString("pcd.id"));								
map.put("collection_id", myResultSet.getString("pcd.collection_id"));
map.put("collection_name", myResultSet.getString("coll.name"));	
arrList.add( idx, map );
 }
session.setAttribute("collect", arrList);
}
response.sendRedirect("collection_menu.jsp?code=edit");  
 
  %>    
<%@ include file="/include/db_close.jsp" %>   