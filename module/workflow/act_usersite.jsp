<%@ page language="java" import="java.util.*" %>

<%
String temp=request.getParameter("code");

Iterator itr; 


ArrayList siteList = (ArrayList)session.getAttribute("site");
if (siteList == null) {
	 siteList = new ArrayList();
}

int idx=siteList.size();

//cek apakah dari addVarList.jsp 
//kalo ya, cek : kalo udah ada object yang sama direject
boolean objexist = false;
System.out.println(request.getParameter("act"));
if (request.getParameter("act") != null) {			//berasal dari add
	
	itr = siteList.iterator();
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
		itr = siteList.iterator();
		while (itr.hasNext()) {
			Map item = (Map) itr.next();
			if (strid.equalsIgnoreCase(item.get("id").toString())) {						//kalo sama dihapus
				idx = siteList.indexOf(item);
				siteList.remove(item);
				break;
			}
		}
	}
	

Map sitemap = new HashMap();
sitemap.put("id", request.getParameter("detail_id"));
sitemap.put("module_id", request.getParameter("module_id"));
sitemap.put("module_name", request.getParameter("module_name"));	
siteList.add( idx, sitemap );
session.setAttribute("site", siteList);
}
if (objexist==false) {
	response.sendRedirect("modulefunction.jsp?act=add&code="+temp);				//object berhasil ditambahkan.
} else {
	response.sendRedirect("modulefunction.jsp?act=add&strExst=true&code="+temp);		//object udah ada, kasih warning ke user.
}
%>

