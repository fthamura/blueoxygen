<script language="JavaScript" version="1.2">
<!--
function checkfields(obj)
		{    
				
    			if (obj.form.elements['username'].value=="") {
       				alert("Login cannot be blank!!");
       				return false;
    			} 		
				if (obj.form.elements['password'].value=="") {
       				alert("Password cannot be blank!!");
       				return false;
    			} 
				if (obj.form.elements['password'].value.length < 3) {
       				alert("Password must have minimal 3 characters !!");
       				return false;
    			}    				
				if (obj.form.elements['first_name'].value=="") {
       				alert("First Name cannot be blank!!");
       				return false;
    			} 		
				if (obj.form.elements['company_id'].value=="") {
       				alert("Company cannot be blank!!");
       				return false;
    			}  
				if (obj.form.elements['position_id'].value=="") {
       				alert("Position cannot be blank!!");
       				return false;
    			}    			  						
			    	return true;
			}
			
function GoAddressCompany()
	{
		window.open("view_company.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}	
function GoAddressPosition()
	{
		window.open("view_position.jsp","TestWindow","width=800,height=500,resizable=yes,scrollbars=yes");
	}				
-->
</script>

<%@ include file="/include/header_module.jsp"%>
<%@ include file="/include/db.jsp"%>

<%
if (session.getAttribute("GA_USER")!=null) {
	if (request.getParameter("action")==null || (request.getParameter("action").equalsIgnoreCase("new"))) { 
%>
<br><form action="act_index.jsp?code=add" method="post" name="backend_user"><table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#ffffff" valign="top"><td bgcolor="#D0DCFF" colspan="3"><b>new - backend_user<input name="table" type="hidden" value="backend_user"><input name="action" type="hidden" value="new"></b></td></tr>

    <tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>ID: 
					</div></td><td><font color="blue"><b><%= randomID.generate() %></b></font>
					<input type="hidden" name="site_id"  size="28" value="<%= session.getAttribute("GS_USER") %>">
					<input type="hidden" name="id"  size="28" value="<%= randomID.generate() %>"></td><td>&nbsp;</td></tr>
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red">* </font>Login: 
					</div></td><td><input maxlength="128" name="username" size="15" type="text" value></td><td>&nbsp;</td></tr>
	
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red">* </font>Password: 
					</div></td><td><input maxlength="30" name="password" size="15" type="password" value></td><td>&nbsp;</td></tr>

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red">* </font>First Name: 
					</div></td><td><input maxlength="128" name="first_name" size="15" type="text" value></td><td>&nbsp;</td></tr>

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Last Name: 
					</div></td><td><input maxlength="128" name="last_name" size="15" type="text" value></td><td>&nbsp;</td></tr>

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red">*</font>Company: 
					</div></td><td><input maxlength="28" name="company_id" size="35" type="hidden"><input maxlength="128" name="company_name" size="35" type="text" readonly>&nbsp;&nbsp;<input type="button"  value="View Company" onclick="GoAddressCompany();"></td><td>&nbsp;</td></tr>

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red">* </font>Position: 
					</div></td><td><input maxlength="28" name="position_id" size="35" type="hidden"><input maxlength="128" name="position_name" size="35" type="text" readonly>&nbsp;&nbsp;<input type="button"  value="View Position" onclick="GoAddressPosition();"></td><td>&nbsp;</td></tr>

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Email: 
					</div></td><td><input maxlength="125" name="email" size="25" type="text" value></td><td>&nbsp;</td></tr>

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Address: 
					</div></td><td><input maxlength="255" name="address1" size="35" type="text" value></td><td>&nbsp;</td></tr>

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>: 
					</div></td><td><input maxlength="255" name="address2" size="35" type="text" value></td><td>&nbsp;</td></tr>

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>City: 
					</div></td><td><input maxlength="128" name="city" size="15" type="text" value></td><td>&nbsp;</td></tr>
	
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Description:
						</div></td><td valign="top"><textarea cols="35" name="description" rows="5"></textarea></td><td>&nbsp;</td></tr>

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Calendar:
						</div></td><td>
		<input name="cal" type="radio" value="1" checked>Yes<br>
		<input name="cal" type="radio" value="0">No<br>
	</td><td>&nbsp;</td></tr>	

	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Project:
						</div></td><td>
		<input name="project" type="radio" value="1">Yes<br>
		<input name="project" type="radio" value="0" checked>No<br>
	</td><td>&nbsp;</td></tr>
	
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Active:
						</div></td><td>
		<input name="active_flag" type="radio" value="1" checked>Yes<br>
		<input name="active_flag" type="radio" value="0">No<br>
	</td><td>&nbsp;</td></tr>
	
	<tr bgcolor="#ffffff" valign="top"><td align="right" width="25%">
										&nbsp;
	</td><td colspan="2"><input name="submit" onclick="return checkfields(this);" type="submit" value="Next &gt;&gt;"></td></tr></table></form>
<%
} else { if (request.getParameter("action").equalsIgnoreCase("search")) { %>
<%@ include file="search.jsp" %>

<%
		}
	}
} else {

%>
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%"><tr bgcolor="#CCFFCC"><td colspan="2"><b>STATUS:</b></td></tr><tr bgcolor="#ffffff" valign="top"><td bgcolor="#ffffff" width="150"><b>Login Session: </b></td><td bgcolor="#ffffff">Time Out. Please, Login Again!!!</td></tr></table>
<% } %>

<%@ include file="/include/db_close.jsp" %>
<%@ include file="/include/footer_module.jsp" %>