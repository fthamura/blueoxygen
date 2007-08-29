<%@ page language="java" import="java.util.*" %>

<%
String temp=request.getParameter("code");

Iterator itr; 


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
		if (request.getParameter("module_id").equalsIgnoreCase(item.get("module_id").toString())) {
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
map.put("module_id", request.getParameter("module_id"));
map.put("module_name", request.getParameter("module_name"));	
arrList.add( idx, map );
session.setAttribute("varexist", arrList);
}
if (objexist==false) {
	response.sendRedirect("wfroleSite.jsp?act=add&code="+temp);				//object berhasil ditambahkan.
} else {
	response.sendRedirect("wfroleSite.jsp?act=add&strExst=true&code="+temp);		//object udah ada, kasih warning ke user.
}
%>

