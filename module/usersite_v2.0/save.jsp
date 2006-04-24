<%@ include file="/include/header_module.jsp"%>
<%@ include file="/include/db.jsp"%>

<% 
StringUtils strnew = new StringUtils();
String code=request.getParameter("code");
String pass = null;
StringUtils string = new StringUtils();
String roleId = "";
Iterator i ;

if (session.getAttribute("GA_USER")!=null) {
	loginBean = new Login(""+(String)session.getAttribute("GA_USER")); 
	UserSite usersite = null;
	usersite = (UserSite)session.getAttribute("org.blueoxygen.cimande.usersite.usite");
	pass = string.encodeBase64(usersite.getPassword());	
			
	ArrayList roleList = (ArrayList) session.getAttribute("role");
	if (roleList != null) {
		i = roleList.iterator(); 
		int counter=1 ;
		while (i.hasNext()) {
				Map item = (Map) i.next();
				if (counter==1) { 
					roleId  = item.get("role_id").toString();
				} 
				counter++;
				break;
		}
	}
		
	
if (code.equalsIgnoreCase("add"))
{
mySQL = "insert into backend_user (site_id,id,username,password,first_name,last_name,company_id,job_position_id,email,address1,address2,city,role_id,description,calendar_flag,project_flag,active_flag,create_by,create_date) values ('"+usersite.getSiteId()+"','"+usersite.getID()+"','"+strnew.replaceHTMLInput(usersite.getUsername())+"','"+pass+"','"+strnew.replaceHTMLInput(usersite.getFirstName())+"','"+strnew.replaceHTMLInput(usersite.getLastName())+"','"+usersite.getCompanyID()+"','"+usersite.getPositionID()+"','"+strnew.replaceHTMLInput(usersite.getEmail())+"','"+strnew.replaceHTMLInput(usersite.getAddress1())+"','"+strnew.replaceHTMLInput(usersite.getAddress2())+"','"+strnew.replaceHTMLInput(usersite.getCity())+"','"+roleId+"','"+strnew.replaceHTMLInput(usersite.getDescription())+"','"+usersite.getCal()+"','"+usersite.getProject()+"','"+usersite.getActiveFlag()+"','"+loginBean.getMemberId()+"',NOW())";
dbBean.execute(mySQL);
}
else {
mySQL = "update backend_user set username='"+strnew.replaceHTMLInput(usersite.getUsername())+"',password='"+pass+"',first_name='"+strnew.replaceHTMLInput(usersite.getFirstName())+"',last_name='"+strnew.replaceHTMLInput(usersite.getLastName())+"',company_id='"+usersite.getCompanyID()+"',job_position_id='"+usersite.getPositionID()+"',email='"+strnew.replaceHTMLInput(usersite.getEmail())+"',address1='"+strnew.replaceHTMLInput(usersite.getAddress1())+"',address2='"+strnew.replaceHTMLInput(usersite.getAddress2())+"',city='"+strnew.replaceHTMLInput(usersite.getCity())+"',role_id='"+roleId+"',description='"+strnew.replaceHTMLInput(usersite.getDescription())+"',calendar_flag='"+usersite.getCal()+"',project_flag='"+usersite.getProject()+"',active_flag='"+usersite.getActiveFlag()+"',update_by='"+loginBean.getMemberId()+"',update_date=NOW() where id='"+usersite.getID()+"'";
dbBean.execute(mySQL);

mySQL = "delete from user_role where user_id ='"+usersite.getID()+"'";
dbBean.execute(mySQL);

mySQL = "delete from user_site where user_id ='"+usersite.getID()+"'";
dbBean.execute(mySQL);

}

	roleList = (ArrayList) session.getAttribute("role");
if (roleList != null) {
	i = roleList.iterator(); 
	int counter=1 ;
	int def;
	while (i.hasNext()) {
			Map item = (Map) i.next();
			if (counter==1) { 
				mySQL = "insert into user_role (site_id,id,user_id,role_id,default_role,create_by,create_date) values ('"+usersite.getSiteId()+"','"+item.get("id")+"','"+usersite.getID()+"','"+item.get("role_id")+"','1','"+loginBean.getMemberId()+"',NOW())"; 
			} else { 	
				mySQL = "insert into user_role (site_id,id,user_id,role_id,default_role,create_by,create_date) values ('"+usersite.getSiteId()+"','"+item.get("id")+"','"+usersite.getID()+"','"+item.get("role_id")+"','0','"+loginBean.getMemberId()+"',NOW())"; 
			}
			dbBean.execute(mySQL);
			counter++ ;
			}

	roleList.clear();
		}

ArrayList arrList = (ArrayList) session.getAttribute("varexist");
if (arrList != null) {
	i = arrList.iterator(); 
	int counter = 1;
	while (i.hasNext()) {
			Map item = (Map) i.next();
			mySQL = "insert into user_site (site_id,id,user_id,user_site_id,create_by,create_date) values ('"+usersite.getSiteId()+"','"+item.get("id")+"','"+usersite.getID()+"','"+item.get("site_id")+"','"+loginBean.getMemberId()+"',NOW())"; 
			dbBean.execute(mySQL);
			counter++ ;
			}

	arrList.clear();
		}
%>

<br><br>
<table width="98%" border="0" >
<tr><td align="center" height="30"><table>  
  <tr> 
    <td align="center" colspan="2"><b>DATA SAVED ...............!</b></td>
  </tr>
</table>


<% } else {
%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table>
<% } %>	

<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>		