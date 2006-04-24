<%@ include file="/include/db.jsp" %>

<%
String temp=request.getParameter("code");
String colname=null;
Iterator itr; 

ArrayList arrList = (ArrayList)session.getAttribute("collect");
if (arrList == null) {
	 arrList = new ArrayList();
}

int idx=arrList.size();	
//cek apakah dari addVarList.jsp 
//kalo ya, cek : kalo udah ada object yang sama direject
boolean objexist = false;
if (request.getParameter("act") != null) {			//berasal dari add
	
	itr = arrList.iterator();
	while (itr.hasNext()) {
		Map item = (Map) itr.next();
		if (request.getParameter("collection_id").equalsIgnoreCase(item.get("collection_id").toString())) {
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
				idx = arrList.indexOf(item);
				arrList.remove(item);
				break;
			}
		}
	}
	
mySQL = "SELECT name from collection WHERE id='"+request.getParameter("collection_id")+"'";	
myResultSet = dbBean.execSQL(mySQL);
if(myResultSet.next())
{	colname = myResultSet.getString("name");	}


Map map = new HashMap();
map.put("id", request.getParameter("detail_id"));								
map.put("collection_id", request.getParameter("collection_id"));
map.put("collection_name", colname);	
arrList.add( idx, map );
session.setAttribute("collect", arrList);
}
if (objexist==false) {
	response.sendRedirect("collection_menu.jsp?act=add&code="+temp);				//object berhasil ditambahkan.
} else {
	response.sendRedirect("collection_menu.jsp?act=add&strExst=true&code="+temp);		//object udah ada, kasih warning ke user.
}
%>
<%@ include file="/include/db_close.jsp" %>

