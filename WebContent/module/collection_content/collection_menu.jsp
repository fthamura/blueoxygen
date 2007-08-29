<%@ include file="header.jsp" %>
<%@ include file="/include/db.jsp" %>
<%

String temp=request.getParameter("code");

//cek kalo item yang mau ditambahin udah ada, jadi ditolak (proses ini udah dijalanin di actAddVarList.jsp
//disini cuman nyampein pesen ke user aja.

if (request.getParameter("strExst") != null) { %>
	<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
	<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Collection&nbsp;&nbsp;<font color="blue"> (Collection Detail Already Exist !! )</font></b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
	
<% } else { %>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffccff"><b>Collection</b></td>
      	</tr>
      	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#ffffff">
      	
      	
<% } %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#D0DCFF" colspan="3"><b>Master</b></td>
      	</tr>
<%@ include file="master.jsp" %>
   
   	     	
<tr bgcolor="#ffffff" valign="top"> 
   	<td bgcolor="white" colspan="10">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="10"><b> Detail
        </b></td>
        </tr>    	     	
<% if (request.getParameter("act")==null || request.getParameter("act").equalsIgnoreCase("add")) {
	%>
	
<%@ include file="add_col.jsp" %>
<% } else {%>
<%@ include file="edit_col.jsp" %>

<% 
} %>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="100%">
    	<tr bgcolor="#ffffff" valign="top"> 
      	<td bgcolor="#eeeeee" colspan="11"><b> Transaction
        </b></td>
        </tr> 
    	
	<tr bgcolor="#CCFFCC">
	<td align="center" ><b>Rank</b></td>
	<td align="center" ><b>Descriptor ID</b></td>
	<td align="center" ><b>Descriptor Name</b></td>
	<td align="center" ><b>Article ID</b></td>
	<td align="center" ><b>Article Name</b></td>
	<td align="center" colspan="2" ><b>Action</b></td></tr>
<%

Iterator i ;
ArrayList arrList = (ArrayList) session.getAttribute("varexist");

if (arrList != null) {
	i = arrList.iterator(); 
	int counter=1;
	while (i.hasNext()) {
		Map item = (Map) i.next();
    		out.println("<tr bgcolor=ffffff>");
    		out.println("<td>" + counter + "</td>");
    		out.println("<td>" + item.get("descriptor_id") + "</td>");
    		out.println("<td>" + item.get("descriptor_name") + "</td>");
    		out.println("<td>" + item.get("article_id") + "</td>");
    		out.println("<td>" + item.get("article_desc") + "</td>");
		out.println("<td><a href='collection_menu.jsp?idn=" + item.get("id") + "&c="+counter+"&act=edit&code="+temp+"'>Edit</a></td>");
		out.println("<td><a href='del.jsp?idn=" + item.get("id")  + "&code="+temp+"'>Del</a></td></tr>"); 
	        counter++;	 	
	}
	
}
%>
</table>
<table width="100%"">
<tr>
	<td colspan="5" align="right" valign="top"><table><tr><td><form action="edit_b.jsp"><input type="submit" value="&lt;&lt; back"></form></td><td><form action="summary.jsp?code=<%= temp %>" name="frmSummary" method="post"><input type="submit" value="Summary"></form></td></tr></table>
	</td>
</tr>
</table>

</td></tr>
</table>
<%@ include file="footer.jsp" %>

<script language="JavaScript"  version="1.2">
function ceksubmit()
	{ 
		
		if (document.frmForm.descriptor_id.value=="")
		{ alert("Descriptor ID can not be blank.");
		  return false;
		}	
		if (document.frmForm.article_id.value=="")
		{ alert("Article ID can not be blank.");
		  return false;
		}	
		else
		{ document.frmForm.submit();
		   }
	}		
function GoAddressDescriptor(var2)
	{
		window.open("view_descriptor1.jsp?id="+var2,"TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}		

function GoAddressArticle(var1,var2)
	{
		if (document.frmForm.descriptor_id.value=="") {
			alert("Choose descriptor id first");
		} else {
		window.open("view_article.jsp?dsname="+var1+"&dsId="+var2,"TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}		}


</script>