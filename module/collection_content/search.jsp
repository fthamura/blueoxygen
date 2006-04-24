<%@ include file="header.jsp" %>
<LINK href="/cimande/style.css" rel="stylesheet" type="text/css"><body bgcolor="lightyellow" width="98%">
<table bgcolor="black" border="0" cellpadding="3" cellspacing="1" width="98%">
<tr bgcolor="#ffffff" valign="top"> 
<form method="post" action="search_r.jsp">
        <td bgcolor="#D0DCFF" colspan="9"><b>Search Collection
        </b></td>
    </tr>
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        ID<font color="red"> 
          contains: </font>
      </td>
      <td>
      	<input type="hidden" maxlength="28" name="site_id" value="<%= session.getAttribute("GS_USER") %>" size="50"> 
        <input type="hidden" name="idCon" value="and">
        <input maxlength="28" name="id" size="28" type="text" value>
             
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> Name<font color="red"> contains:</font> </td>
      <td> 
        
        <input type="hidden" name="nameCon" value="and">
        <input name="name" maxlength="128" size="25" type="text" value>
      </td>
      
    </tr>
    <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        Description<font color="red"> contains:</font>
      </td>
      <td> 
        
        <input type="hidden" name="descriptionCon" value="and">
        <input maxlength="255" name="description" size="15" type="text" value>
      </td>
     
    </tr>
          <tr bgcolor="#ffffff"> 
      <td width="25%" align="right"> 
        Skin ID<font color="red"> 
          contains: </font>
      </td>
    <td>
      	<input type="hidden" name="SkinIdCon" value="and">
        <input  maxlength="28" name="skin_id" size="28" type="text" value>
        </td>
     
    </tr>    
	<tr bgcolor="#ffffff" valign="top"><td width="25%"><div align="right"><font color="red"></font>Active<font color="red"> contains:</font></td><td>
		<input type="hidden" name="ActiveCon" value="and">
		<input name="active_flag" type="radio" value="1">Yes<br>
		<input name="active_flag" type="radio" value="0">No<br>
	</td></tr>
	<tr bgcolor="#ffffff"> 
      <td width="25%" align="right">&nbsp;
      </td>
      <td> 
      <div align="right">
       
      <input type="submit" name="submit" value="Search">
      </td>
     
    </tr>
  </table>
</form>
<%@ include file="footer.jsp" %>