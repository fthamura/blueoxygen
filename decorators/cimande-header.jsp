<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<script language="JavaScript" version="1.2">
<!--
function checksearch(obj)
{    		
	if (obj.form.elements['keywords'].value=="") {
		alert("Search Category cannot be blank!!");
		return false;
	}			
    	return true;
}	
-->								
</script>                
                
   
<html><!-- InstanceBegin template="/Templates/makintemplates.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Intercitra Inovation - <decorator:title default="Welcome" /></title>
<!-- InstanceEndEditable --> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="<%= contextPath %>/workspc/makinstyle.css" rel="stylesheet" type="text/css">
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<script src="<%=root%>/decorators/effects.js"></script>
    <decorator:head />
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="100%" valign="top"> <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr> 
          <td height="1%" valign="top" background="<%= contextPath %>/workspc/images/bgright.gif">
<table width="100%" height="132" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="86" valign="bottom">
<table width="100%" height="86" border="0" cellpadding="0" cellspacing="0">
                    <tr> 
                      <td height="50" valign="bottom"> 
                        <table width="100%" height="86" border="0" cellpadding="0" cellspacing="0" background="<%= contextPath %>/workspc/images/header.jpg">
                          <tr> 
                            <td height="56" valign="middle"> 
                              <%@ include file="/workspc/include/header-search.jsp" %></td>
                          </tr>
                          <tr> 
                            <td height="30" valign="bottom">
                            <!-- folder -->
                            <%@ include file="/workspc/include/folder.jsp" %>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table></td>
              </tr>
              <tr> 
                <td height="25" background="<%= contextPath %>/workspc/images/subheader.gif"><!-- InstanceBeginEditable name="foldersub" --> 
                
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr> 
			<td>&nbsp;&nbsp;
                		<!-- folder -->
                  		<%@ include file="/workspc/include/folder-navigator.jsp" %>
        	        </td>
			</tr>
			</table>
                  
                  <!-- InstanceEndEditable --></td>
              </tr>
              <tr> 
                <td height="21" background="<%= contextPath %>/workspc/images/headerbot.jpg">&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td height="98%" valign="top"><!-- InstanceBeginEditable name="content" --> 
                  <table width="100%" border="0" cellspacing="7" cellpadding="8">
                    <tr> 
                      
                <td valign="top">
                
             