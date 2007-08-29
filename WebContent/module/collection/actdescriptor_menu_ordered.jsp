<%@ include file="/include/db.jsp" %>

<%
String temp=request.getParameter("code");
String descname=null;

Iterator itr; 


ArrayList arrList = (ArrayList)session.getAttribute("varexist");
if (arrList == null) {
	 arrList = new ArrayList();
}

int idx=arrList.size();

//cek apakah dari addVarList.jsp 
//kalo ya, cek : kalo udah ada object yang sama direject
boolean objexist = false;
if (request.getParameter("act").equalsIgnoreCase("add")) {			//berasal dari add
	
	itr = arrList.iterator();
	while (itr.hasNext()) {
		Map item = (Map) itr.next();
		if (request.getParameter("descriptor_id").equalsIgnoreCase(item.get("descriptor_id").toString())) {
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
	
mySQL = "SELECT name from descriptor WHERE id='"+request.getParameter("descriptor_id")+"'";	
myResultSet = dbBean.execSQL(mySQL);
if(myResultSet.next())
{	descname = myResultSet.getString("name");	}		

Map map = new HashMap();
map.put("id", request.getParameter("detail_id"));								
map.put("descriptor_id", request.getParameter("descriptor_id"));
map.put("descriptor_name", descname);	
map.put("ordered_by", request.getParameter("ordered_by"));
map.put("limit", request.getParameter("limit"));

arrList.add( idx, map );
session.setAttribute("varexist", arrList);
}
if (objexist==false) {
	response.sendRedirect("descriptor_menu_ordered.jsp?act=add&code="+temp);				//object berhasil ditambahkan.
} else {
	response.sendRedirect("descriptor_menu_ordered.jsp?act=add&strExst=true&code="+temp);		//object udah ada, kasih warning ke user.
}
%>

