<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
<tr bgcolor="#ffffff" valign="top"> 
<form method="post" action="search_r.jsp">
        <td bgcolor="#D0DCFF" colspan="9"><b>Search Role Site Privilage
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
      <td width="25%" align="right"> 
       Name<font color="red"> 
          contains: </font>
      </td>
    <td>
      	<input type="hidden" name="nameCon" value="and">
        <input name="name" size="28" maxlength="128" type="text" value>
             
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right">Description<font color="red"> contains:</font> </td>
      <td> 
        
        <input type="hidden" name="descriptionCon" value="and">
        <input name="description" size="30" maxlength="256" type="text" value>
      </td>
    </tr>
	<tr bgcolor="#ffffff"> 
      <td width="25%" align="right">&nbsp;
      </td>
      
    <td> 
	   <input type="submit" name="submit" value="Search">
      </div>
    </td>
     
    </tr>
  </table>
</form>
