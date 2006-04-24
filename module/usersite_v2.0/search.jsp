
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
<tr bgcolor="#ffffff" valign="top"> 
<form method="post" action="search_r.jsp">
        <td bgcolor="#D0DCFF" colspan="9"><b>Search   
        </b></td>
    </tr>
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        ID<font color="red"> 
          contains: </font>
      </td>
      <td>
      	<input type="hidden" name="site_id" value="<%= session.getAttribute("GS_USER") %>" size="50"> 
        <input maxlength="28" name="id" size="28" type="text" value>
       </td>
	   </tr>      
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> Login<font color="red"> contains:</font> </td>
      <td> 
        <input name="username" size="25" type="text" value>
      </td>
      
    </tr>
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        Password<font color="red"> contains:</font>
      </td>
      <td> 
        <input name="password" size="15" type="text" value>
      </td>
     
    </tr>
       <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        First Name<font color="red"> 
          contains: </font>
      </td>
    <td>
        <input name="firstname" size="28" type="text" value>
             
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right">Last Name<font color="red"> contains:</font> </td>
      <td> 
        <input name="lastname" size="30" type="text" value>
      </td>
      
    </tr>
    
	<tr bgcolor="#ffffff"><td width="25%"><div align="right">Company<font color="red"> contains: </font></div></td><td>
		<select name="company_id">
		<option value="">All Company</option>
		<option value="">-----------------------------</option>
	<%  mySQL= "select id,name from company order by name";
		myResultSet = dbBean.execSQL(mySQL);
		while (myResultSet.next()) {
	%>  <option value="<%= myResultSet.getString("id")%>"><%= myResultSet.getString("name")%></option>
	<%  } %>
	    </select>
	</td></tr>	    

	<tr bgcolor="#ffffff"><td width="25%"><div align="right">Position<font color="red"> contains: </font></div></td><td>
		<select name="position_id">
		<option value="">All Position</option>
		<option value="">-----------------------------</option>
	<%  mySQL= "select id,name from job_position order by name";
		myResultSet = dbBean.execSQL(mySQL);
		while (myResultSet.next()) {
	%>  <option value="<%= myResultSet.getString("id")%>"><%= myResultSet.getString("name")%></option>
	<%  } %>
	    </select>
	</td></tr>	 

	<tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        Email<font color="red"> 
          contains: </font>
      </td>
      <td>
        <input name="email" size="25" type="text" value>
         </td>
		 </tr>    
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> Address<font color="red"> contains:</font> </td>
      <td> 
        <input name="address1" size="25" type="text" value>
      </td>
      
    </tr>
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        City<font color="red"> 
          contains: </font>
      </td>
    <td>
        <input name="city" size="28" type="text" value>
      </tr>       
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        Description<font color="red"> contains:</font>
      </td>
      <td> 
        <input maxlength="28" name="desc" size="30" type="text" value>
      </td>
     
    </tr>

	<tr bgcolor="#ffffff" valign="top">
		<td width="25%"><div align="right"><font color="red"></font>Calendar<font color="red"> options:</font></td>
		<td><input name="cal_flag" type="radio" value="1">Yes &nbsp;&nbsp;&nbsp;<input name="cal_flag" type="radio" value="0">No
	</td></tr>

	<tr bgcolor="#ffffff" valign="top">
		<td width="25%"><div align="right"><font color="red"></font>Project<font color="red"> options:</font></td>
		<td><input name="project_flag" type="radio" value="1">Yes &nbsp;&nbsp;&nbsp;<input name="project_flag" type="radio" value="0">No
	</td></tr>
		
	<tr bgcolor="#ffffff"> 
      <td width="25%" align="right">&nbsp;
      </td>
      
    <td> 
      <div align="right"> 
        
        <input type="submit" name="submit" value="Search">
      </div>
    </td>
     
    </tr>
 </table>
</form>