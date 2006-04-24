<%@ include file="/include/db.jsp" %>
<%
		String sStatus = request.getParameter("status");
		String sSiteId = request.getParameter("site_id"); 
		String sId = request.getParameter("id");
		String sName = request.getParameter("name");
		String sDescription =request.getParameter("description");	
		String sSkinId = request.getParameter("skin_id");
		String sSkinName = request.getParameter("skin_name");
		String sArtStatus =request.getParameter("art_status");
		String sActiveFlag =request.getParameter("active_flag");
		
	CollectionData collection;
   collection = new CollectionData(sName,sDescription,sId,sSiteId,sSkinId,sSkinName,sArtStatus,sActiveFlag);
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
mySQL = "select * from collection_descriptor where collection_id='"+request.getParameter("id")+"' and site_id='"+request.getParameter("site_id")+"' ";
myResultSet = dbBean.execSQL(mySQL);
while (myResultSet.next()){

int idx=arrList.size();		  
Map map = new HashMap();	
map.put("id",myResultSet.getString("id"));
map.put("descriptor_id",myResultSet.getString("descriptor_id"));
map.put("descriptor_name",myResultSet.getString("descriptor_name"));
map.put("ordered_by",myResultSet.getString("ordered_by"));
map.put("limit",myResultSet.getString("limit_value"));	
arrList.add(idx,map);
 }
session.setAttribute("varexist",arrList);
}

if (sArtStatus.equalsIgnoreCase("0"))     
	{   
		response.sendRedirect("descriptor_menu.jsp?code=edit");    
		
	}
	else
	{
		response.sendRedirect("descriptor_menu_ordered.jsp?code=edit");
		} 


%>              
