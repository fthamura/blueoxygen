<%@ include file="header.jsp" %>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
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
        <input type="hidden" name="idCon" value="and">
        <input maxlength="28" name="id" size="28" type="text" value>
       </td>
	   </tr>      
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> Login<font color="red"> contains:</font> </td>
      <td> 
        
        <input type="hidden" name="usernameCon" value="and">
        <input name="username" size="25" type="text" value>
      </td>
      
    </tr>
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        Password<font color="red"> contains:</font>
      </td>
      <td> 
        
        <input type="hidden" name="passwordCon" value="and">
        <input name="password" size="15" type="text" value>
      </td>
     
    </tr>
       <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        First Name<font color="red"> 
          contains: </font>
      </td>
    <td>
      	<input type="hidden" name="firstnameCon" value="and">
        <input name="firstname" size="28" type="text" value>
             
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right">Last Name<font color="red"> contains:</font> </td>
      <td> 
        
        <input type="hidden" name="lastnameCon" value="and">
        <input name="lastname" size="30" type="text" value>
      </td>
      
    </tr>
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        Company ID<font color="red"> contains:</font>
      </td>
      <td> 
        
        <input type="hidden" name="companyidCon" value="and">
        <input maxlength="28" name="company_id" size="30" type="text" value>
      </td>
     
    </tr>
	<tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        Email<font color="red"> 
          contains: </font>
      </td>
      <td>
      	<input type="hidden" name="emailCon" value="and">
        <input name="email" size="25" type="text" value>
         </td>
		 </tr>    
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> Address<font color="red"> contains:</font> </td>
      <td> 
        
        <input type="hidden" name="address1Con" value="and">
        <input name="address1" size="25" type="text" value>
      </td>
      
    </tr>
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        City<font color="red"> 
          contains: </font>
      </td>
    <td>
      	<input type="hidden" name="cityCon" value="and">
        <input name="city" size="28" type="text" value>
      </tr>       
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        Description<font color="red"> contains:</font>
      </td>
      <td> 
        
        <input type="hidden" name="descCon" value="and">
        <input maxlength="28" name="desc" size="30" type="text" value>
      </td>
     
    </tr>
	
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
<%@ include file="footer.jsp" %>