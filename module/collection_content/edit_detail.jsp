<%@ include file="/include/db.jsp" %>
<%
		String sStatus = request.getParameter("status");
		String sSiteId = request.getParameter("site_id"); 
		String sId = request.getParameter("id");
		String sName = request.getParameter("name");
		String sDescription =request.getParameter("description");	
		String sSkinId = request.getParameter("skin_id");
		String sSkinName = request.getParameter("skin_name");
		String sActiveFlag =request.getParameter("active_flag");
		
DtCollection collection;
   collection = new DtCollection(sName,sDescription,sId,sSiteId,sSkinId,sSkinName,sActiveFlag);
                session.setAttribute("org.blueoxygen.cimande.collection.collect",collection);
				
if (sStatus == null)
{
ArrayList arrList = (ArrayList)session.getAttribute("varexist");
if (arrList == null) {
	 arrList = new ArrayList();
}
else { 
	arrList.clear();
 }
mySQL = "select * from collection_detail where collection_id='"+request.getParameter("id")+"' order by rank";
myResultSet = dbBean.execSQL(mySQL);
while (myResultSet.next()){

int idx=arrList.size();		  
Map map = new HashMap();	
map.put("id",myResultSet.getString("id"));								
map.put("descriptor_id",myResultSet.getString("descriptor_id"));
map.put("descriptor_name",myResultSet.getString("descriptor_name"));	
map.put("article_id",myResultSet.getString("article_id"));	
map.put("article_desc",myResultSet.getString("article_desc"));	
arrList.add(idx,map);
 }
session.setAttribute("varexist",arrList);
}
response.sendRedirect("collection_menu.jsp?code=edit");  
%>              
