<%@ page language="java" import="java.util.*" %>

<%
String temp=request.getParameter("code");

Iterator itr,str; 
ArrayList siteList = (ArrayList)session.getAttribute("slist");
if (siteList == null) {
	 siteList = new ArrayList();
}

ArrayList arrList = (ArrayList)session.getAttribute("varexist");
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
		if (request.getParameter("site_id").equalsIgnoreCase(item.get("site_id").toString())) {
			objexist = true;
			break;
		}
		
	}
	str = siteList.iterator();
	while (str.hasNext()) {
	Map siteItem = (Map) str.next();
	if (request.getParameter("site_name").equalsIgnoreCase(siteItem.get("site_name").toString())) {
			objexist = true;
			break;
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
	

Map map = new HashMap();
map.put("id", request.getParameter("detail_id"));
map.put("site_id", request.getParameter("site_id"));
map.put("site_name", request.getParameter("site_name"));	
arrList.add( idx, map );
session.setAttribute("varexist", arrList);
}


if (objexist==false) {
	response.sendRedirect("wfroleSite.jsp?act=add&code="+temp);				//object berhasil ditambahkan.
} else {
	response.sendRedirect("wfroleSite.jsp?act=add&strExst=true&code="+temp);		//object udah ada, kasih warning ke user.
}
%>

