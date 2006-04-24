<%@ include file="/include/db.jsp" %>

<%
String temp=request.getParameter("code");
String descname=null;
String artname=null;
Iterator itr; 


ArrayList arrList = (ArrayList)session.getAttribute("varexist");
if (arrList == null) {
	 arrList = new ArrayList();
}

int idx=arrList.size();

//cek apakah dari addVarList.jsp 
//kalo ya, cek : kalo udah ada object yang sama direject
boolean objexist = false;
System.out.println(request.getParameter("act"));
if (request.getParameter("act") != null) {			//berasal dari add
	
	itr = arrList.iterator();
	while (itr.hasNext()) {
		Map item = (Map) itr.next();
		if ((request.getParameter("descriptor_id").equalsIgnoreCase(item.get("descriptor_id").toString())) && (request.getParameter("article_id").equalsIgnoreCase(item.get("article_id").toString()))) {
			objexist = true;
		}
	}
} 

//kalo belon ada object tst di array list maka ditambahin ke array list
if (objexist==false) {

	//cek apakah dari collection_menu.jsp?act=edit
	//kalo ya cari object yang mau diedit , terus didelete
	//cari berdasarkan hashcode dari object tsb.
	String strid = request.getParameter("idn");
	if (strid != null) {					//berasal dari edit
		itr = arrList.iterator();
		while (itr.hasNext()) {
			Map item = (Map) itr.next();
			if (strid.equalsIgnoreCase(item.get("id").toString())) {						//kalo sama dihapus
				idx = (new Integer(request.getParameter("rank")).intValue())-1;
				arrList.remove(item);
				break;
			}
		}
	}
		

Map map = new HashMap();
map.put("id", request.getParameter("detail_id"));								
map.put("descriptor_id", request.getParameter("descriptor_id"));
map.put("descriptor_name",request.getParameter("descriptor_name"));	
map.put("article_id", request.getParameter("article_id"));	
map.put("article_desc", request.getParameter("article_desc"));	
arrList.add( idx, map );
session.setAttribute("varexist", arrList);
}
if (objexist==false) {
	response.sendRedirect("collection_menu.jsp?act=add&code="+temp);				//object berhasil ditambahkan.
} else {
	response.sendRedirect("collection_menu.jsp?act=add&strExst=true&code="+temp);		//object udah ada, kasih warning ke user.
}
%>

