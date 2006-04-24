<%@ page language="java" import="java.util.*" %>

<%
String temp=request.getParameter("code");

Iterator itr; 


ArrayList roleList = (ArrayList)session.getAttribute("role");
if (roleList == null) {
	 roleList = new ArrayList();
}

int idx=roleList.size();

//cek apakah dari addVarList.jsp 
//kalo ya, cek : kalo udah ada object yang sama direject
boolean objexist = false;

if (request.getParameter("act").equalsIgnoreCase("add")) {				
	itr = roleList.iterator();
	while (itr.hasNext()) {
		Map item = (Map) itr.next();
		if (request.getParameter("role_id").equalsIgnoreCase(item.get("role_id").toString())) {
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
	String sDefault = ""+request.getParameter("default");
	if (strid != null) {					//berasal dari edit
		itr = roleList.iterator();
		while (itr.hasNext()) {
			Map item = (Map) itr.next();
			if (strid.equalsIgnoreCase(item.get("id").toString())) {   //kalo sama dihapus
				idx = roleList.indexOf(item);
				if (idx==0) {
					if (sDefault.equals("1")) { idx=0; }
					else {  idx= roleList.size()-1 ; }	
				} else { 
					if (sDefault.equals("1")) { idx=0; } }
						
				roleList.remove(item);
				break;
			}
		}
	}
	if (sDefault.equals("1")) { idx=0; } 
	
	Map map = new HashMap();
	map.put("id", request.getParameter("detail_id"));
	map.put("role_id", request.getParameter("role_id"));
	map.put("role_name", request.getParameter("role_name"));	
	roleList.add( idx, map );
	session.setAttribute("role", roleList);
}
if (objexist==false) {
	response.sendRedirect("userrole.jsp?act=add&code="+temp);				//object berhasil ditambahkan.
} else {
	response.sendRedirect("userrole.jsp?act=add&strExst=true&code="+temp);		//object udah ada, kasih warning ke user.
}
%>

